function oCB:CreateFramework(Frame, Name, Bar)
	-- Create frame
	local F = CreateFrame("Frame", Name, UIParent)
	F:SetMovable(true)
	F:EnableMouse(false)
	F:RegisterForDrag("LeftButton")
	F:SetScript("OnDragStart", function() if not self.db.profile.lock then this:StartMoving() end end)
	F:SetScript("OnDragStop", function() this:StopMovingOrSizing() self:savePosition() end)
	F:SetFrameStrata("BACKGROUND")
	F:Hide()
	F.name = Frame

	-- Create components
	F.Bar = CreateFrame("StatusBar", nil, F)

	if (Bar ~="MirrorBar") and (Bar ~="TargetBar") then
		F.LagBar = CreateFrame("StatusBar", nil, F)
		F.Delay = F.Bar:CreateFontString(nil, "OVERLAY")
		F.Latency = F.Bar:CreateFontString(nil, "OVERLAY")
	end

	F.Spark = CreateFrame("Frame", nil, F)
	F.Spark.Texture = F.Spark:CreateTexture(nil, "OVERLAY")
	F.Time = F.Bar:CreateFontString(nil, "OVERLAY")
	F.Spell = F.Bar:CreateFontString(nil, "OVERLAY")
	F.Icon = CreateFrame("Frame", nil, F)
	F.Icon.Texture = F.Icon:CreateTexture(nil, "OVERLAY")
	F.BarBackground = F:CreateTexture(nil, "BORDER")

	-- Setup OnUpdate
	local onUpdateHandlers = {
		["MirrorBar"] = self.OnMirror,
		["TargetBar"] = self.OnTargetCasting,
		["CastingBar"] = self.OnCasting
	}
	F:SetScript("OnUpdate", onUpdateHandlers[Bar] or self.OnCasting)

	-- Save and configure
	self.frames[Frame] = F
	self:Layout(Frame, Bar)
end

-- Setup font string properties
function oCB:SetupFontString(String, font, size, outline, monochrome, shadow, offsetX, offsetY)
    String:SetFont(font, size, outline .. (monochrome and "MONOCHROME" or ""))
    String:SetShadowColor(0, 0, 0, shadow and 1 or 0)
    String:SetShadowOffset(offsetX, offsetY)
end

function oCB:SetupFont(Font, Justify, Text, P, Rel, PRel, X, Y)
	Font:SetJustifyH(Justify)

	if Text then
		Font:SetText(Text)
	end

	Font:ClearAllPoints()
	Font:SetPoint(P, Rel, PRel, X, Y)
end

-- Setup spark properties
function oCB:SetupSpark(spark, height, isMirrorBar)
	spark:SetWidth(22)
	spark:SetFrameLevel(3)
	spark.Texture:SetAllPoints(spark)
	spark.Texture:SetTexture("Interface\\CastingBar\\UI-CastingBar-Spark")
	spark.Texture:SetBlendMode("ADD")
	spark:SetHeight(height * (isMirrorBar and 1.2 or 1.3))
	spark.Texture:SetTexCoord(0, 1, isMirrorBar and 0.3 or 0.25, isMirrorBar and 0.67 or 0.705)
end

function oCB:SetupStatusBar(Bar, Width, Height, Point, Rel, RelPoint, X, Y, FrameLevel, Texture)
	Bar:ClearAllPoints()
	Bar:SetPoint(Point, Rel, RelPoint, X, Y)
    Bar:SetWidth(Width)
    Bar:SetHeight(Height)
	Bar:SetFrameLevel(FrameLevel)
	Bar:SetStatusBarTexture(Texture)
end

function oCB:SetIconVisibility(F, db)
	local w
	
	if not db.hideIcon and F.Icon.Texture:GetTexture() then
		if not F.Icon:IsVisible() then
			F.Icon:Show()
		else
			F.Icon:SetPoint("RIGHT", F, "LEFT", db.height+6, 0)
		end
		
		w = db.width-db.height
	else
		if F.Icon:IsVisible() then
			F.Icon:Hide()
		else
			F.Bar:SetPoint("RIGHT", F, "RIGHT", -3, 0)
		end
		
		w = db.width+3
	end
	
	F.Bar:SetWidth(w)
end

function oCB:Layout(Frame, Bar)
	-- Get profile settings and frame
	local db = self.db.profile[Bar or Frame]
	local F = self.frames[Frame]

	-- Frame
	F:SetWidth(db.width+9)
	F:SetHeight(db.height+10)
	F:SetBackdrop({
        bgFile = "Interface\\Tooltips\\UI-Tooltip-Background", tile = true, tileSize = 16,
        edgeFile = self.Borders[db.edgeFile], edgeSize = 10,
        insets = {left = 4, right = 3, top = 3, bottom = 3},
	})
	F:SetBackdropBorderColor(1, 1, 1)
	F:SetBackdropColor(0, 0, 0, 0.5)

	self:SetupStatusBar(F.Bar, db.width, db.height+3, "RIGHT", F, "RIGHT", -3, 0, 1, self.Textures[db.texture])

	-- Background
	local BG = F.BarBackground
	BG:SetAllPoints(F.Bar)
	BG:SetTexture(self.Textures[db.texture])
	BG:SetTexCoord(0, 1, 1.3, 0)
	BG:SetAlpha(0.4)
	BG:SetVertexColor(0.6, 0.6, 0.6)

	-- Icon
	F.Icon.Texture:SetTexCoord(0.08,0.92,0.08,0.92)
	F.Icon.Texture:SetAllPoints(F.Icon)
	F.Icon:ClearAllPoints()
	
	if not F.Icon.Texture:GetTexture() then
		F.Icon.Texture:SetTexture("Interface\\Icons\\Trade_Engineering")
	end
	
	F.Icon:SetPoint("RIGHT", F, "LEFT", db.height+6, 0)
	F.Icon:SetWidth(db.height+3)
	F.Icon:SetHeight(db.height+3)
	F.Icon:SetBackdrop({
        bgFile = "Interface\\Tooltips\\UI-Tooltip-Background", tile = true, tileSize = 8,
        edgeFile = "Interface\\AddOns\\oCB\\Backdrop\\PlainBackdrop", edgeSize = 1,
        insets = {left = 1, right = 1, top = 1, bottom = 1},
	})
	F.Icon:SetBackdropBorderColor(0, 0, 0, 0.7)
	F.Icon:SetBackdropColor(0, 0, 0, 0.4)

	oCB:SetIconVisibility(F, db)

	if not self.db.profile.lock then
		local Min, Max = F.Bar:GetMinMaxValues()
		local Value = F.Bar:GetValue()
		local widthAdd = 0

		if F.Icon:IsVisible() then
			widthAdd = db.height + 3
		end

		F.Spark:SetPoint("CENTER", F.Bar, "LEFT", (Value/Max)*(db.width-widthAdd)+3, 0)
	end

	-- Setup spark
	self:SetupSpark(F.Spark, db.height, Bar == "MirrorBar")

	-- Setup Time font
	self:SetupFontString(F.Time,
		self.Fonts[db.timeFont],
		db.timeSize,
		self.Outlines[db.timeOutline],
		db.timeFontMonochrome,
		db.timeFontShadow,
		db.timeFontShadowOffsetX,
		db.timeFontShadowOffsetY)
	oCB:SetupFont(F.Time, "RIGHT", "Xx.Y / Xx.Y", "RIGHT", F.Bar, "RIGHT", -8, 1)

	-- Setup Spell font
	self:SetupFontString(F.Spell,
		self.Fonts[db.spellFont],
		db.spellSize,
		self.Outlines[db.spellOutline],
		db.spellFontMonochrome,
		db.spellFontShadow,
		db.spellFontShadowOffsetX,
		db.spellFontShadowOffsetY)
	oCB:SetupFont(F.Spell, "LEFT", nil, "LEFT", F.Bar, "LEFT", 15, 1)
	F.Spell:SetWidth(db.width-F.Time:GetWidth())

	if (Bar ~="MirrorBar") and (Bar ~="TargetBar") then
		if db.hideLagBar then
			F.LagBar:Hide()
		else
			self:SetupStatusBar(F.LagBar, 0, F.Bar:GetHeight(), "RIGHT", F, "LEFT", db.width+5, 0, 0, self.Textures[db.texture])
			F.LagBar:SetValue(0)
			F.LagBar:Show()
		end
    
        -- Setup Delay font
		self:SetupFontString(F.Delay,
			self.Fonts[db.delayFont],
			db.delaySize,
			self.Outlines[db.delayOutline],
			db.delayFontMonochrome,
			db.delayFontShadow,
			db.delayFontShadowOffsetX,
			db.delayFontShadowOffsetY)
		oCB:SetupFont(F.Delay, "RIGHT", "X.Y", "RIGHT", F, "RIGHT", -(db.width*(db.delayOffset/100)), 1)
		F.Delay:SetTextColor(1, 0, 0, 1)
        
        -- Setup Latency font
		self:SetupFontString(F.Latency,
			self.Fonts[db.latencyFont],
			db.latencySize,
			self.Outlines[db.latencyOutline],
			db.latencyFontMonochrome,
			db.delayFontShadow,
			db.latencyFontShadowOffsetX,
			db.latencyFontShadowOffsetY)
		oCB:SetupFont(F.Latency, "RIGHT", "420ms", "BOTTOMRIGHT", F, "BOTTOMRIGHT", -3, 4)
		F.Latency:SetTextColor(0.36, 0.36, 0.36, 0)
	end

	self:updatePositions(Frame)
end

function oCB:ShowBlizzCB()
	CastingBarFrame:RegisterEvent("SPELLCAST_START")
	CastingBarFrame:RegisterEvent("SPELLCAST_STOP")
	CastingBarFrame:RegisterEvent("SPELLCAST_INTERRUPTED")
	CastingBarFrame:RegisterEvent("SPELLCAST_FAILED")
	CastingBarFrame:RegisterEvent("SPELLCAST_DELAYED")
	CastingBarFrame:RegisterEvent("SPELLCAST_CHANNEL_START")
	CastingBarFrame:RegisterEvent("SPELLCAST_CHANNEL_STOP")
end

function oCB:HideBlizzCB()
	CastingBarFrame:UnregisterEvent("SPELLCAST_START")
	CastingBarFrame:UnregisterEvent("SPELLCAST_STOP")
	CastingBarFrame:UnregisterEvent("SPELLCAST_INTERRUPTED")
	CastingBarFrame:UnregisterEvent("SPELLCAST_FAILED")
	CastingBarFrame:UnregisterEvent("SPELLCAST_DELAYED")
	CastingBarFrame:UnregisterEvent("SPELLCAST_CHANNEL_START")
	CastingBarFrame:UnregisterEvent("SPELLCAST_CHANNEL_STOP")
end
