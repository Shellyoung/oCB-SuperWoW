local elapsed = 0
local OCB_CASTING = 1
local OCB_CHANNELING = 2
local OCB_FADEOUT = 3
local OCB_CAST_SUCCESS = 4

local function ToRomanNumerals(number)
	number = tonumber(number)
	
    if not number or number < 1 or number > 10 then
		return ""
	end
	
    local romanValues = {{10, "X"}, {9, "IX"}, {5, "V"}, {4, "IV"}, {1, "I"}}
    local result = ""
	
    for _, value in ipairs(romanValues) do
        while number >= value[1] do
            result = result .. value[2]
            number = number - value[1]
        end
    end
	
    return result
end

-- dIsInSeconds is passed by custom clients if they want to save on maths
-- dontRegister is passed by custom clients if they need to call Stop/Failed/Delayed manually
function oCB:CastStart(spellID, d, dIsInSeconds, dontRegister, externalIcon)
    local db = self.db.profile
    local Bar = self.frames.CastingBar
    local color = db.Colors.Casting
    local Name, Rank
    
    if not spellID then
        self:Debug("Invalid spellID, aborting CastStart")
        return
    end
    
    if type(spellID) == "string" then
        Name = spellID
    else
        Name, Rank = SpellInfo(spellID)
    end
    
    if not dontRegister then
        self:RegisterEvent("SPELLCAST_STOP", "SpellStop")
        self:RegisterEvent("SPELLCAST_INTERRUPTED", "SpellFailed")
        self:RegisterEvent("SPELLCAST_FAILED", "SpellFailed")
        self:RegisterEvent("SPELLCAST_DELAYED", "SpellDelayed")
    end
    
    self:Debug(string.format("CastStart - %s | %s (%s)%s", Name, d, dIsInSeconds and "s" or "ms", dontRegister and " | Not Registering" or ""))
    self.startTime = GetTime()
    d = dIsInSeconds and d or d / 1000
    self.maxValue = self.startTime + d
    
    if externalIcon == "Interface\\Icons\\Ability_Hunter_EagleEye" then
        color = db.Colors.FlyingTransport
    end
    
    Name = Name == "" and (getglobal("GameTooltipTextLeft1"):GetText() or "") or Name
    
    if not db.CastingBar.hideIcon then
        local icon, isItem = self:GetSpellIcon(spellID, Name)
        
        icon = oCBIcon or externalIcon or icon
        
        if isItem or string.find(Name, "^Recette") or string.find(Name, "^Plans :") or string.find(Name, "^Patron :") or string.find(Name, "^Formule :") then
            Bar.Latency:SetText("")
            Bar.LagBar:SetWidth(0)
            icon = icon or "Interface\\AddOns\\oCB\\Icons\\Spell_Arcane_MindMastery"
        elseif not db.lock then
            icon = icon or "Interface\\Icons\\Trade_Engineering"
        end
        
        Bar.Icon.Texture:SetTexture(icon)
    end
    
    local displayRank = nil
    if db.CastingBar.spellShowRank and Rank and Rank ~= "" then
        local _, _, rankNumber = string.find(Rank or "", "(%d+)")
		
        if rankNumber then
            if db.CastingBar.spellRomanRank then
                displayRank = ToRomanNumerals(rankNumber)
            else
                displayRank = tostring(rankNumber)
            end
			
            Name = Name .. " " .. (db.CastingBar.spellShortRank and displayRank or "(" .. RANK_COLON .. " " .. displayRank .. ")")
        end
    end
    
    Bar.Spell:SetText(Name)
    
    if oCBCastSent and oCBCastSent > 0 then
        local mylatency = math.floor((GetTime() - oCBCastSent) * 1000)
        local w = Bar.Bar:GetWidth()
        local lagw = math.min(w, w - (w * (self.maxValue - self.startTime - (mylatency / 1000)) / (self.maxValue - self.startTime)))
        
        Bar.Latency:SetText(mylatency .. "ms")
        Bar.LagBar:SetStatusBarColor(1, 0, 0, 0.5)
        Bar.LagBar:SetMinMaxValues(0, 100)
        Bar.LagBar:SetValue(100)
        Bar.LagBar:SetWidth(lagw)
    else
        Bar.Latency:SetText("")
        Bar.LagBar:SetValue(0)
    end
    
    self.holdTime = 0
    self.delay = 0
    self.CastMode = OCB_CASTING
    
    Bar.Bar:SetStatusBarColor(color.r, color.g, color.b)
    Bar.Bar:SetMinMaxValues(self.startTime, self.maxValue)
    Bar.Bar:SetValue(0)
    
    self:ShowCastingBar()
end

function oCB:ShowCastingBar()
	local Bar = oCB.frames.CastingBar
	
	Bar.Time:SetText("")
	Bar.Delay:SetText("")
	Bar.Spark:Show()
	Bar:SetAlpha(1)
	Bar:Show()
	self:SetIconVisibility(Bar, self.db.profile.CastingBar)
end

function oCB:TargetBarIfTargetIsPlayer(action)
	local _, player = UnitExists("player")
	local _, target = UnitExists("target")
	
	if player == target then
		if action == "HIDE" then
			oCB.frames.TargetBar:Hide()
		elseif action == "SHOW" then
			oCB.frames.TargetBar:Show()
		end
	end
end

function oCB:HideCastingBar()
	local Bar = oCB.frames.CastingBar
	
	Bar:Hide()
	Bar.Spark:Hide()
	Bar.Time:SetText("")
	Bar.Delay:SetText("")
	Bar:SetAlpha(1)
	Bar.Spark:SetAlpha(1)
	
	oCB:TargetBarIfTargetIsPlayer("HIDE")
end

function oCB:OnCasting()
	local Bar = oCB.frames.CastingBar
	local db = oCB.db.profile.CastingBar
	local Now, sp, w, pos, time = GetTime(), 0, Bar.Bar:GetWidth()
	
	elapsed = elapsed + arg1
	
	if oCB.CastMode == OCB_CASTING then
		pos = Now-oCB.startTime
		if Now >= oCB.maxValue then Now = oCB.maxValue end
		
		sp = ((Now - oCB.startTime) / (oCB.maxValue - oCB.startTime)) * w
		if sp < 0 then sp = 0 end
		if pos < 0 then pos = 0 end
		
		if db.TimeFormat == "4.5 / 10" then
			Bar.Time:SetText(oCB:FormatTime(math.max(oCB.maxValue - Now, 0)).." / "..oCB:FormatTime(oCB.maxValue-oCB.startTime))
		elseif db.TimeFormat == "4.5" then
			Bar.Time:SetText(oCB:FormatTime(math.max(oCB.maxValue - Now, 0)))
		end
		
		if oCB.delay and oCB.delay ~= 0 then
			Bar.Delay:SetText("+" .. string.format("%.1f", oCB.delay or "" ))
		else 
			Bar.Delay:SetText("")
		end
		
		Bar.Bar:SetValue(Now)
		Bar.Spark:SetPoint("CENTER", Bar.Bar, "LEFT", sp, 0)
		
		if Now == oCB.maxValue then
			if not oCB.db.profile.lock then
				oCBName = "Drag me"
				oCBIcon = "Interface\\Icons\\Trade_Engineering"
				oCB:SpellChannelStart(3500)
				oCB.delay = 3.5
			else
				oCB:SpellStop(true)
			end
		end
	elseif oCB.CastMode == OCB_CHANNELING then
		if Now > oCB.endTime then Now = oCB.endTime end
		
		local b = oCB.startTime + (oCB.endTime - Now)
		
		sp = ((b - oCB.startTime) / (oCB.endTime - oCB.startTime)) * w
		
		if db.TimeFormat == "4.5 / 10" then
			Bar.Time:SetText(oCB:FormatTime(math.max(oCB.maxValue - Now, 0)).." / "..oCB:FormatTime(oCB.maxValue-oCB.startTime))
		elseif db.TimeFormat == "4.5" then
			Bar.Time:SetText(oCB:FormatTime(math.max(oCB.maxValue - Now, 0)))
		end
		
		if oCB.delay and oCB.delay ~= 0 then
			Bar.Delay:SetText("-" .. string.format("%.1f", oCB.delay ))
		else 
			Bar.Delay:SetText("")
		end
		
		Bar.Bar:SetValue(b)
		Bar.Spark:SetPoint("CENTER", Bar.Bar, "LEFT", sp, 0)
		
		if Now == oCB.endTime then
			if not oCB.db.profile.lock then
				oCB:CastStart("Drag me", 3.5, true, true)
				oCB.delay = 3.5
			else
				oCB:SpellChannelStop()
			end
		end
	elseif oCB.CastMode == OCB_FADEOUT then
		local a = this:GetAlpha() - 0.07
		
		if a > 0 then
			Bar:SetAlpha(a)
		else
			oCB.CastMode = nil
			oCB:HideCastingBar()
		end
	-- elseif GetTime() < oCB.holdTime then
		-- return
	end
end

function oCB:SpellDelayed(d)
	self:Debug(string.format("SpellDelayed - Spell delayed with %s", d/1000))
	d = d / 1000
	
	if (self.frames.CastingBar:IsShown()) then
		self.startTime = self.startTime + d
		self.maxValue = self.maxValue + d
		self.delay = self.delay + d
		self.frames.CastingBar.Bar:SetMinMaxValues(self.startTime, self.maxValue)
	end
end

-- Arg is for custom clients
function oCB:SpellStop(dontUnregister)
	self:Debug("SpellStop - Stopping cast")
	
	self.frames.CastingBar.Latency:SetText("")
	self.frames.CastingBar.LagBar:SetValue(0)
	oCBCastSent = 0
	
	if oCB.CastMode ~= OCB_CHANNELING then
		local c = self.db.profile.Colors.Complete
		
		self.frames.CastingBar.Bar:SetStatusBarColor(c.r, c.g, c.b)
	end
	
	oCB.delay = 0
	oCB.frames.CastingBar:Hide()
	oCB.CastMode = OCB_CAST_SUCCESS
	oCB:TargetBarIfTargetIsPlayer("HIDE")
	
	if not self.db.profile.lock then
		self:ShowTest()
	end
	
	if not dontUnregister then
		self:UnregisterEvent("SPELLCAST_STOP")
		self:UnregisterEvent("SPELLCAST_FAILED")
		self:UnregisterEvent("SPELLCAST_INTERRUPTED")
		self:UnregisterEvent("SPELLCAST_DELAYED")
	end
end

function oCB:SpellFailed(dontUnregister)
	self:Debug("SpellFailed - Stopping cast")
	
	local c = self.db.profile.Colors.Failed

	self.frames.CastingBar.Bar:SetStatusBarColor(c.r, c.g, c.b)
	self.frames.CastingBar.Latency:SetText("")
	self.frames.CastingBar.LagBar:SetValue(0)
	
	self.CastMode 	= nil
	oCB:HideCastingBar()
	self.holdTime = GetTime() + 1
	
	self.frames.CastingBar.Spell:SetText(FAILED)
    
    if not dontUnregister then
        self:UnregisterEvent("SPELLCAST_STOP")
        self:UnregisterEvent("SPELLCAST_FAILED")
        self:UnregisterEvent("SPELLCAST_INTERRUPTED")
        self:UnregisterEvent("SPELLCAST_DELAYED")
    end
end

function oCB:SpellChannelStart(d)
    local Bar = self.frames.CastingBar
    local db = self.db.profile
    local c = db.Colors.Channel
    
    self:Debug("SpellChannelStart - Starting channel")
    self:Debug("ChannelInfo - "..(oCBName or arg2).." - "..(oCBRank or "no rank").." - "..(oCBIcon or ""))
    d = d / 1000
    
    self.startTime = GetTime()
    self.endTime = self.startTime + d
    self.maxValue = self.endTime
    
    Bar.Bar:SetStatusBarColor(c.r, c.g, c.b)
    Bar.Bar:SetMinMaxValues(self.startTime, self.endTime)
    Bar.Bar:SetValue(self.endTime)
    
    -- Обработка ранга
    local displayRank = nil
    if oCBRank and oCBRank ~= "" and db.CastingBar.spellShowRank then
        -- Извлекаем число из ранга
        local _, _, rankNumber = string.find(oCBRank or "", "(%d+)")
		
        if rankNumber then
            if db.CastingBar.spellRomanRank then
                displayRank = ToRomanNumerals(rankNumber)
            else
                displayRank = tostring(rankNumber)
            end
            
            self:Debug("Found: "..oCBName.." ("..RANK_COLON.." "..displayRank..")")
            
            if db.CastingBar.spellShortRank then
				Bar.Spell:SetText(oCBName.." "..displayRank)
            else
                Bar.Spell:SetText(oCBName.." (" .. RANK_COLON .. " " .. displayRank .. ")")
            end
        else
            Bar.Spell:SetText(oCBName or arg2)
        end
    else
        Bar.Spell:SetText(oCBName or arg2)
    end
    
    if not db.CastingBar.hideIcon then
        Bar.Icon.Texture:SetTexture(oCBIcon)
    end
    
    self.holdTime = 0
    self.delay = 0
    oCB.CastMode = OCB_CHANNELING
    
    Bar.Time:SetText(oCB:FormatTime(math.max(oCB.maxValue, 0.0)))
    Bar.Latency:SetText("")
    Bar.Spark:Show()
    Bar.Delay:SetText("")
    Bar:SetAlpha(1)
    Bar:Show()
    self:SetIconVisibility(Bar, self.db.profile.CastingBar)
end

function oCB:SpellChannelUpdate(d)
	self:Debug("SpellChannelUpdate - Updating channel")
	d = d / 1000
	
	if self.frames.CastingBar:IsShown() then
		local origDuration = self.endTime - self.startTime
		
		self.delay = self.delay + d
		self.endTime = GetTime() + d
		self.maxValue = self.endTime
		self.startTime = self.endTime - origDuration
		
		self.frames.CastingBar.Bar:SetMinMaxValues(self.startTime, self.endTime)
	end
end

function oCB:SpellChannelStop()
	self:Debug("SpellChannelStop - Stopping channel")
	
	if self.CastMode == OCB_CHANNELING then
		local c = self.db.profile.Colors.Complete
		
		self.frames.CastingBar.Bar:SetStatusBarColor(c.r, c.g, c.b)
		
		self.delay 			= 0
		self.CastMode 	= OCB_FADEOUT -- channelstop
		
		if not self.db.profile.lock then
			self:ShowTest()
		end
	end
end