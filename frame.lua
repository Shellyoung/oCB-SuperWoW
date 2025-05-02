function oCB:CreateFramework(b, n, s)
	self.frames[b] = CreateFrame("Frame", n, UIParent)
	self.frames[b]:SetFrameStrata("BACKGROUND")
	self.frames[b]:Hide()
	self.frames[b].name = b
	self.frames[b]:SetMovable(true)
	self.frames[b]:EnableMouse(false)
	self.frames[b]:RegisterForDrag("LeftButton")
	self.frames[b]:SetScript("OnDragStart", function() if not self.db.profile.lock then this:StartMoving() end end)
	self.frames[b]:SetScript("OnDragStop", function() this:StopMovingOrSizing() self:savePosition() end)
	
	self.frames[b].Bar = CreateFrame("StatusBar", nil, self.frames[b])
	
	if (s ~="MirrorBar") and (s ~="TargetBar") then
		self.frames[b].LagBar = CreateFrame("StatusBar", nil, self.frames[b])
		self.frames[b].Delay = self.frames[b].Bar:CreateFontString(nil, "OVERLAY")
		self.frames[b].Latency = self.frames[b].Bar:CreateFontString(nil, "OVERLAY")
	end
	
	self.frames[b].Spark = CreateFrame("Frame", nil, self.frames[b])
	self.frames[b].Spark.Texture = self.frames[b].Spark:CreateTexture(nil, "OVERLAY")
	self.frames[b].Time = self.frames[b].Bar:CreateFontString(nil, "OVERLAY")
	self.frames[b].Spell = self.frames[b].Bar:CreateFontString(nil, "OVERLAY")
	self.frames[b].Icon = CreateFrame("Frame", nil, self.frames[b])
	self.frames[b].Icon.Texture = self.frames[b].Icon:CreateTexture(nil, "OVERLAY")
	self.frames[b].BarBackground = self.frames[b]:CreateTexture(nil, "BORDER")
	
	if (s =="MirrorBar") then
		self.frames[b]:SetScript("OnUpdate", self.OnMirror)
	elseif (s =="TargetBar") then
		self.frames[b]:SetScript("OnUpdate", self.OnTargetCasting)
	else
		self.frames[b]:SetScript("OnUpdate", self.OnCasting)
	end
	
	self:Layout(b, s)
end

function oCB:Layout(b, s)
	local db = self.db.profile[s or b]
	local f, _ = GameFontHighlightSmall:GetFont()
	
	self.frames[b]:SetWidth(db.width+9)
	self.frames[b]:SetHeight(db.height+10)
	self.frames[b]:SetBackdrop({
		bgFile = "Interface\\Tooltips\\UI-Tooltip-Background", tile = true, tileSize = 16,
		edgeFile = self.Borders[db.edgeFile], edgeSize = 10,
		insets = {left = 4, right = 3, top = 3, bottom = 3},
	})
	
	self.frames[b]:SetBackdropBorderColor(1, 1, 1)
	self.frames[b]:SetBackdropColor(0, 0, 0, 0.5)
	
	self.frames[b].Bar:ClearAllPoints()
	self.frames[b].Bar:SetPoint("RIGHT", self.frames[b], "RIGHT", -3, 0)
	self.frames[b].Bar:SetWidth(db.width)
	self.frames[b].Bar:SetHeight(db.height+3)
	self.frames[b].Bar:SetFrameLevel(1)
	self.frames[b].Bar:SetStatusBarTexture(self.Textures[db.texture])
	
	self.frames[b].BarBackground:SetAllPoints(self.frames[b].Bar)
	self.frames[b].BarBackground:SetTexture(self.Textures[db.texture])
	self.frames[b].BarBackground:SetTexCoord(0, 1, 1.3, 0)
	self.frames[b].BarBackground:SetAlpha(0.4)
	self.frames[b].BarBackground:SetVertexColor(0.6, 0.6, 0.6)
	
	self.frames[b].Icon:ClearAllPoints()
	self.frames[b].Icon:SetPoint("RIGHT", self.frames[b], "LEFT", db.height+6, 0)
	self.frames[b].Icon:SetWidth(db.height+3)
	self.frames[b].Icon:SetHeight(db.height+3)
	self.frames[b].Icon:SetBackdrop({
		bgFile = "Interface\\Tooltips\\UI-Tooltip-Background", tile = true, tileSize = 8,
		edgeFile = "Interface\\AddOns\\oCB\\Backdrop\\PlainBackdrop", edgeSize = 1,
		insets = {left = 1, right = 1, top = 1, bottom = 1},
	})
	self.frames[b].Icon:SetBackdropBorderColor(0, 0, 0, 0.7)
	self.frames[b].Icon:SetBackdropColor(0, 0, 0, 0.4)
	
	self.frames[b].Icon.Texture:SetTexCoord(0.08,0.92,0.08,0.92)
	self.frames[b].Icon.Texture:SetAllPoints(self.frames[b].Icon)
	
	if not self.frames[b].Icon.Texture:GetTexture() then
		self.frames[b].Icon.Texture:SetTexture("Interface\\Icons\\Trade_Engineering")
	end
	
	oCB:SetIconVisibility(self.frames[b], db)
	
	if not self.db.profile.lock then
		local minvalue, maxvalue = self.frames[b].Bar:GetMinMaxValues()
		local barvalue = self.frames[b].Bar:GetValue()
		local widthAdd = 0
		
		if self.frames[b].Icon:IsVisible() then
			widthAdd = db.height + 3
		else
			widthAdd = 0
		end
		
		self.frames[b].Spark:SetPoint("CENTER", self.frames[b].Bar, "LEFT", (barvalue/maxvalue)*(db.width-widthAdd)+3, 0)
	end
	
	self.frames[b].Spark:SetWidth(22)
	self.frames[b].Spark:SetFrameLevel(3)
	self.frames[b].Spark.Texture:SetAllPoints(self.frames[b].Spark)
	self.frames[b].Spark.Texture:SetTexture("Interface\\CastingBar\\UI-CastingBar-Spark")
	self.frames[b].Spark.Texture:SetBlendMode("ADD")
	
	
	if s == "MirrorBar" then
		self.frames[b].Spark:SetHeight(db.height*1.2)
		self.frames[b].Spark.Texture:SetTexCoord(0,1,0.3,0.67)
	else
		self.frames[b].Spark:SetHeight(db.height*1.3)
		self.frames[b].Spark.Texture:SetTexCoord(0,1,0.25,0.705)
	end
	
	self.frames[b].Time:SetJustifyH("RIGHT")
	self.frames[b].Time:SetFont(self.Fonts[db.timeFont],db.timeSize, (self.Outlines[db.timeOutline])..(db.timeFontMonochrome and "MONOCHROME" or ""))
	self.frames[b].Time:SetShadowColor( 0, 0, 0, 0)
	
	if db.timeFontShadow then
		self.frames[b].Time:SetShadowColor( 0, 0, 0, 1)
	end
	
	self.frames[b].Time:SetShadowOffset(db.timeFontShadowOffsetX, db.timeFontShadowOffsetY)
	self.frames[b].Time:SetText("Xx.Y / Xx.Y")
	self.frames[b].Time:ClearAllPoints()
	self.frames[b].Time:SetPoint("RIGHT", self.frames[b].Bar, "RIGHT",-8,1)
	
	self.frames[b].Spell:SetJustifyH("LEFT")
	self.frames[b].Spell:SetWidth(db.width-self.frames[b].Time:GetWidth())
	self.frames[b].Spell:SetFont(self.Fonts[db.spellFont], db.spellSize, (self.Outlines[db.spellOutline])..(db.spellFontMonochrome and "MONOCHROME" or ""))
	self.frames[b].Spell:SetShadowColor( 0, 0, 0, 0)
	
	if db.spellFontShadow then
		self.frames[b].Spell:SetShadowColor( 0, 0, 0, 1)
	end
	
	self.frames[b].Spell:SetShadowOffset(db.spellFontShadowOffsetX, db.spellFontShadowOffsetY)
	self.frames[b].Spell:ClearAllPoints()
	self.frames[b].Spell:SetPoint("LEFT", self.frames[b].Bar, "LEFT", 15,1)
	
	if (s ~="MirrorBar") and (s ~="TargetBar") then
		if db.hideLagBar then
			self.frames[b].LagBar:Hide()
		else
			self.frames[b].LagBar:ClearAllPoints()
			self.frames[b].LagBar:SetPoint("RIGHT", self.frames[b], "LEFT", db.width+5, 0)
			self.frames[b].LagBar:SetWidth(0)
			self.frames[b].LagBar:SetHeight(self.frames[b].Bar:GetHeight())
			self.frames[b].LagBar:SetFrameLevel(0) --CHANGED from 1
			self.frames[b].LagBar:SetValue(0)
			self.frames[b].LagBar:SetStatusBarTexture(self.Textures[db.texture])
			self.frames[b].LagBar:Show()
		end
	
		self.frames[b].Delay:SetTextColor(1,0,0,1)
		self.frames[b].Delay:SetJustifyH("RIGHT")
		self.frames[b].Delay:SetFont(self.Fonts[db.delayFont], db.delaySize, (self.Outlines[db.delayOutline])..(db.delayFontMonochrome and "MONOCHROME" or ""))
		self.frames[b].Delay:SetShadowColor( 0, 0, 0, 0)
		
		if db.delayFontShadow then
			self.frames[b].Delay:SetShadowColor( 0, 0, 0, 1)
		end
		
		self.frames[b].Delay:SetShadowOffset(db.delayFontShadowOffsetX, db.delayFontShadowOffsetY)
		self.frames[b].Delay:SetText("X.Y")
		self.frames[b].Delay:ClearAllPoints()
		self.frames[b].Delay:SetPoint("RIGHT", self.frames[b], "RIGHT",-(db.width*(db.delayOffset/100)),1)
		
		self.frames[b].Latency:SetTextColor(0.36,0.36,0.36,0)
		self.frames[b].Latency:SetJustifyH("RIGHT")
		self.frames[b].Latency:SetFont(self.Fonts[db.latencyFont], db.latencySize, (self.Outlines[db.latencyOutline])..(db.latencyFontMonochrome and "MONOCHROME" or ""))
		self.frames[b].Latency:SetShadowColor( 0, 0, 0, 0)
		
		if db.latencyFontShadow then
			self.frames[b].Latency:SetShadowColor( 0, 0, 0, 1)
		end
		
		self.frames[b].Latency:SetShadowOffset(db.latencyFontShadowOffsetX, db.latencyFontShadowOffsetY)
		self.frames[b].Latency:SetText("420ms")
		self.frames[b].Latency:ClearAllPoints()
		self.frames[b].Latency:SetPoint("BOTTOMRIGHT", self.frames[b], "BOTTOMRIGHT", -3, 4)
	end
	
	self:updatePositions(b)
end

function oCB:SetIconVisibility(Bar, db)
	local w
	
	if not db.hideIcon and Bar.Icon.Texture:GetTexture() then
		if not Bar.Icon:IsVisible() then
			Bar.Icon:Show()
		else
			Bar.Icon:SetPoint("RIGHT", Bar, "LEFT", db.height+6, 0)
		end
		
		w = db.width-db.height
	else
		if Bar.Icon:IsVisible() then
			Bar.Icon:Hide()
		else
			Bar.Bar:SetPoint("RIGHT", Bar, "RIGHT", -3, 0)
		end
		
		w = db.width+3
	end
	
	Bar.Bar:SetWidth(w)
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
