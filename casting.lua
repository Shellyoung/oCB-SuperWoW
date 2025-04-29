local BS = AceLibrary("Babble-Spell-2.3")
local elapsed = 0
local OCB_CASTING = 1
local OCB_CHANNELING = 2
local OCB_FADEOUT = 3
local OCB_CAST_SUCCESS = 4

function oCB:GetSpellIcon(spell)
	local icon, SpellIcon, ItemIcon, IsItem = nil, nil, nil, false
	local OpeningItemName
	
	if spell == "Opening" or spell == "Opening - No Text" then
		OpeningItemName = (getglobal("GameTooltipTextLeft1"):GetText() or "")
		ItemIcon = self:FindItemIcon(OpeningItemName)
	else
		ItemIcon = self:FindItemIcon(spell)
	end

	if not SpellIcon and not ItemIcon then
		if TradeSkillFrame and TradeSkillFrame:IsVisible() then
			self:Debug("entering loop !")
			
			for i=1,GetNumTradeSkills() do
				if GetTradeSkillInfo(i) == spell then
					self:Debug("found! "..GetTradeSkillInfo(i))
					SpellIcon = GetTradeSkillIcon(i)
					
					break
				end
			end
			
			if not SpellIcon then
				self:Debug("Craft icon not found :(")
			end 
		elseif oCBTooltip then
			ItemIcon = self:FindItemIcon(oCBTooltip)
		end
	end
	
	IsItem = ItemIcon ~= nil
	
	if SpellIcon then
		icon = SpellIcon
	elseif ItemIcon then
		icon = ItemIcon
	end
	
	return icon, IsItem
end

-- dIsInSeconds is passed by custom clients if they want to save on maths
-- dontRegister is passed by custom clients if they need to call Stop/Failed/Delayed manually
function oCB:SpellStart(s, d, dIsInSeconds, dontRegister, externalIcon)
    local db = self.db.profile
    local Bar = self.frames.CastingBar
    local color = db.Colors.Casting

    if not dontRegister then
        self:RegisterEvent("SPELLCAST_STOP", "SpellStop")
        self:RegisterEvent("SPELLCAST_INTERRUPTED", "SpellFailed")
        self:RegisterEvent("SPELLCAST_FAILED", "SpellFailed")
        self:RegisterEvent("SPELLCAST_DELAYED", "SpellDelayed")
    end

    self:Debug(string.format("SpellStart - %s | %s (%s)%s", s, d, dIsInSeconds and "s" or "ms", dontRegister and " | Not Registering" or ""))
    self.startTime = GetTime()
    d = dIsInSeconds and d or d / 1000
    self.maxValue = self.startTime + d

	-- if ToFu started a flight
    if externalIcon == "Interface\\Icons\\Ability_Hunter_EagleEye" then
        color = db.Colors.FlyingTransport
    end
	
    s = s == "" and (getglobal("GameTooltipTextLeft1"):GetText() or "") or s

    if not db.CastingBar.hideIcon then
        local icon, IsItem = self:GetSpellIcon(s)
		
        icon = oCBIcon and oCBName == s and oCBIcon or externalIcon or icon
		
        if IsItem or string.find(s, "^Recette") or string.find(s, "^Plans :") or string.find(s, "^Patron :") or string.find(s, "^Formule :") then
            Bar.Latency:SetText("")
            Bar.LagBar:SetWidth(0)
            icon = icon or "Interface\\AddOns\\oCB\\Icons\\Spell_Arcane_MindMastery"
        elseif not db.lock then
            icon = icon or "Interface\\Icons\\Trade_Engineering"
        end
		
        Bar.Icon.Texture:SetTexture(icon)
    end

    -- Обработка ранга заклинания
    if oCBRank and db.CastingBar.spellShowRank and self:IsSpell(s, oCBRank) then
        local rank = db.CastingBar.spellRomanRank and tonumber(oCBRank) and ArabicToRoman(tonumber(oCBRank)) or oCBRank
		
        s = s .. " " .. (db.CastingBar.spellShortRank and rank or string.format(string.gsub(RANK_COLON, ":", "%%s"), rank))
    end

    Bar.Spell:SetText(s)

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
				oCB:SpellStart("Drag me", 3.5, true, true)
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
	local Bar 	= self.frames.CastingBar
	local db 	= self.db.profile
	local c 		= db.Colors.Channel
	
	self:Debug("SpellChannelStart - Starting channel")
	self:Debug("ChannelInfo - "..(oCBName or arg2).." - "..(oCBRank or "no rank").." - "..(oCBIcon or ""))
	d = d / 1000
	
	self.startTime = GetTime()
	self.endTime = self.startTime + d
	self.maxValue = self.endTime
	
	Bar.Bar:SetStatusBarColor(c.r, c.g, c.b)
	Bar.Bar:SetMinMaxValues(self.startTime, self.endTime)
	Bar.Bar:SetValue(self.endTime)
	
	if oCBRank and db.CastingBar.spellShowRank then
		if oCB:IsSpell(oCBName, oCBRank) then
			self:Debug("Found: "..oCBName.." (Rank: "..oCBRank..")")
			
			if db.CastingBar.spellRomanRank then
				local num = tonumber(oCBRank)
				
				if num and num > 0 then
					oCBRank = ArabicToRoman(num)
				end
			end
			
			if not db.CastingBar.spellShortRank then
				Bar.Spell:SetText(oCBName.." "..string.format(string.gsub(RANK_COLON, ":", "%%s"), oCBRank))
			else
				Bar.Spell:SetText(oCBName.." "..oCBRank)
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
	
	self.holdTime 		= 0
	self.delay			= 0
	oCB.CastMode	= OCB_CHANNELING -- ChannelStart

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