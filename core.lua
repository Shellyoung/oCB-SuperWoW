local Default				= {
	CastingBar			= {
		width 			= 250,
		height			= 20,
		hideLagBar		= false,
		hideIcon		= false,
		edgeFile		= "None",
		texture			= "Healbot",
		timeSize		= 12,
		timeFont		= "Friz Quadrata",
		TimeFormat = "4.5 / 10",
		timeFontMonochrome = false,
		timeFontShadow = true,
		timeFontShadowOffsetX = 1,
		timeFontShadowOffsetY = -1,
		timeOutline	= "None",
		spellSize		= 12,
		spellFont		= "Friz Quadrata",
		spellFontMonochrome = false,
		spellFontShadow = true,
		spellFontShadowOffsetX = 1,
		spellFontShadowOffsetY = -1,
		spellShowRank = true,
		spellShortRank = false,
		spellRomanRank = false,
		spellOutline	= "None",
		delayOffset		= 34,
		delaySize		= 12,
		delayFont		= "Friz Quadrata",
		delayFontMonochrome = false,
		delayFontShadow = true,
		delayFontShadowOffsetX = 1,
		delayFontShadowOffsetY = -1,
		delayOutline	= "None",
		latencySize		= 12,
		latencyFont		= "Friz Quadrata",
		latencyFontMonochrome = false,
		latencyFontShadow = true,
		latencyFontShadowOffsetX = 1,
		latencyFontShadowOffsetY = -1,
		latencyOutline	= "None",
	},
	TargetBar			= {
		width 			= 250,
		height			= 20,
		hideIcon		= false,
		showInstantCasts = true,
		instantCastsDuration = 0.5,
		edgeFile		= "None",
		texture			= "Healbot",
		timeSize		= 12,
		timeFont		= "Friz Quadrata",
		TimeFormat = "4.5 / 10",
		timeFontMonochrome = false,
		timeFontShadow = true,
		timeFontShadowOffsetX = 1,
		timeFontShadowOffsetY = -1,
		timeOutline	= "None",
		spellSize		= 12,
		spellFont		= "Friz Quadrata",
		spellFontMonochrome = false,
		spellFontShadow = true,
		spellFontShadowOffsetX = 1,
		spellFontShadowOffsetY = -1,
		spellOutline	= "None",
	},	
	MirrorBar			= {
		width 			= 250,
		height			= 20,
		edgeFile		= "None",
		texture			= "Healbot",
		timeSize		= 12,
		timeFont		= "Friz Quadrata",
		hideIcon		= false,
		timeFontMonochrome = false,
		timeFontShadow = true,
		timeFontShadowOffsetX = 1,
		timeFontShadowOffsetY = -1,
		timeOutline	= "None",
		spellSize		= 12,
		spellFont		= "Friz Quadrata",
		spellFontMonochrome = false,
		spellFontShadow = true,
		spellFontShadowOffsetX = 1,
		spellFontShadowOffsetY = -1,
		spellOutline	= "None",
	},
	Colors						= {
		Complete				= {r=0.1, g=1, b=0.1},
		Casting					= {r=0.47, g=0.46, b=0.49},
		Channel					= {r=0, g=0.3, b=1},
		Failed					= {r=0.6, g=0, b=0},
		TargetCasting			= {r=1, g=204/255, b=0},
		TargetChannel		= {r=0, g=0.3, b=1},
		TargetComplete 		= {r=0.1, g=1, b=0.1}, -- cast finished ("success" for friendlies, "fail" for enemies)
		TargetStopped		= {r=1, g=0.07, b=0}, -- cast interrupted ("fail" for friendlies, "success" for enemies)
		FlyingTransport 		= {r=0.65, g=0.9, b=1},
		Unsilenceable 			= {r=0.7, g=0.7, b=0.7},
	},
	Mirror				= {
		EXHAUSTION 		= {r=1, g=0.9, b=0},
		BREATH			= {r=0.56, g=0.8, b=1, a=0.55},
		DEATH			= {r=0.65, g=0.9, b=1},
		FEIGNDEATH		= {r=1, g=0.7, b=1}
	},
	Pos = {}
}
local Textures		= {
	["Aluminium"] = "Interface\\AddOns\\oCB\\textures\\Aluminium",
	["Armory"] = "Interface\\AddOns\\oCB\\textures\\Armory",
	["BantoBar"] = "Interface\\AddOns\\oCB\\textures\\BantoBar",
	["Bars"] = "Interface\\AddOns\\oCB\\textures\\Bars",
	["Blizzard"] = "Interface\\TargetingFrame\\UI-StatusBar",
	["Bumps"] = "Interface\\AddOns\\oCB\\textures\\Bumps",
	["Button"] = "Interface\\AddOns\\oCB\\textures\\Button",
	["Charcoal"] = "Interface\\AddOns\\oCB\\textures\\Charcoal",
	["Cilo"] = "Interface\\AddOns\\oCB\\textures\\Cilo",
	["Cloud"] = "Interface\\AddOns\\oCB\\textures\\Cloud",
	["Comet"] = "Interface\\AddOns\\oCB\\textures\\Comet",
	["Dabs"] = "Interface\\AddOns\\oCB\\textures\\Dabs",
	["DarkBottom"] = "Interface\\AddOns\\oCB\\textures\\DarkBottom",
	["Diagonal"] = "Interface\\AddOns\\oCB\\textures\\Diagonal",
	["Empty"] = "Interface\\AddOns\\oCB\\textures\\Empty",
	["Falumn"] = "Interface\\AddOns\\oCB\\textures\\Falumn",
	["Fifths"] = "Interface\\AddOns\\oCB\\textures\\Fifths",
	["Flat"] = "Interface\\AddOns\\oCB\\textures\\Flat",
	["Fourths"] = "Interface\\AddOns\\oCB\\textures\\Fourths",
	["Frost"] = "Interface\\AddOns\\oCB\\textures\\Frost",
	["Glamour"] = "Interface\\AddOns\\oCB\\textures\\Glamour",
	["Glamour2"] = "Interface\\AddOns\\oCB\\textures\\Glamour2",
	["Glamour3"] = "Interface\\AddOns\\oCB\\textures\\Glamour3",
	["Glamour4"] = "Interface\\AddOns\\oCB\\textures\\Glamour4",
	["Glamour5"] = "Interface\\AddOns\\oCB\\textures\\Glamour5",
	["Glamour6"] = "Interface\\AddOns\\oCB\\textures\\Glamour6",
	["Glamour7"] = "Interface\\AddOns\\oCB\\textures\\Glamour7",
	["Glass"] = "Interface\\AddOns\\oCB\\textures\\Glass",
	["Glaze"] = "Interface\\AddOns\\oCB\\textures\\glaze",
	["Glaze2"] = "Interface\\AddOns\\oCB\\textures\\Glaze2",
	["Gloss"] = "Interface\\AddOns\\oCB\\textures\\Gloss",
	["Graphite"] = "Interface\\AddOns\\oCB\\textures\\Graphite",
	["Grid"] = "Interface\\AddOns\\oCB\\textures\\Grid",
	["Hatched"] = "Interface\\AddOns\\oCB\\textures\\Hatched",
	["Healbot"] = "Interface\\AddOns\\oCB\\textures\\Healbot",
	["LiteStep"] = "Interface\\AddOns\\oCB\\textures\\LiteStep",
	["LiteStepLite"] = "Interface\\AddOns\\oCB\\textures\\LiteStepLite",
	["Lyfe"] = "Interface\\AddOns\\oCB\\textures\\Lyfe",
	["Melli"] = "Interface\\AddOns\\oCB\\textures\\Melli",
	["MelliDark"] = "Interface\\AddOns\\oCB\\textures\\MelliDark",
	["MelliDarkRough"] = "Interface\\AddOns\\oCB\\textures\\MelliDarkRough",
	["Minimalist"] = "Interface\\AddOns\\oCB\\textures\\Minimalist",
	["Default"] = "Interface\\AddOns\\oCB\\textures\\oCB",
	["Otravi"] = "Interface\\AddOns\\oCB\\textures\\Otravi",
	["Outline"] = "Interface\\AddOns\\oCB\\textures\\Outline",
	["Perl"] = "Interface\\AddOns\\oCB\\textures\\perl",
	["Perl2"] = "Interface\\AddOns\\oCB\\textures\\Perl2",
	["Pill"] = "Interface\\AddOns\\oCB\\textures\\Pill",
	["Rain"] = "Interface\\AddOns\\oCB\\textures\\Rain",
	["Rocks"] = "Interface\\AddOns\\oCB\\textures\\Rocks",
	["Round"] = "Interface\\AddOns\\oCB\\textures\\Round",
	["Ruben"] = "Interface\\AddOns\\oCB\\textures\\Ruben",
	["Runes"] = "Interface\\AddOns\\oCB\\textures\\Runes",
	["Skewed"] = "Interface\\AddOns\\oCB\\textures\\Skewed",
	["Smooth"] = "Interface\\AddOns\\oCB\\textures\\smooth",
	["Smoothv2"] = "Interface\\AddOns\\oCB\\textures\\Smoothv2",
	["Smudge"] = "Interface\\AddOns\\oCB\\textures\\Smudge",
	["Steel"] = "Interface\\AddOns\\oCB\\textures\\Steel",
	["Striped"] = "Interface\\AddOns\\oCB\\textures\\striped",
	["Tube"] = "Interface\\AddOns\\oCB\\textures\\Tube",
	["Water"] = "Interface\\AddOns\\oCB\\textures\\Water",
	["Wglass"] = "Interface\\AddOns\\oCB\\textures\\Wglass",
	["Wisps"] = "Interface\\AddOns\\oCB\\textures\\Wisps",
	["Xeon"] = "Interface\\AddOns\\oCB\\textures\\Xeon"
}
local Borders 		= {
	["Default"] 		= "Interface\\AddOns\\oCB\\border\\roth",
	["Tooltip"]			= "Interface\\Tooltips\\UI-Tooltip-Border",
	["Dialogue"]		= "Interface\\DialogFrame\\UI-DialogBox-Border"
}
local Outlines 		= {
	["None"] 		= "",
	["Normal"] 		= "OUTLINE",
	["Thick"] 		= "THICKOUTLINE"
}
local Fonts 		= {
	["Adventure"] 	= "Interface\\AddOns\\oCB\\fonts\\adventure.ttf",
	["Backsplatter"] 	= "Interface\\AddOns\\oCB\\fonts\\backsplatter.ttf",
	["Bazooka"] 	= "Interface\\AddOns\\oCB\\fonts\\bazooka.ttf",
	["BlackCastleMF"] 	= "Interface\\AddOns\\oCB\\fonts\\BlackCastleMF.ttf",
	["Budhand"] 	= "Interface\\AddOns\\oCB\\fonts\\budhand.ttf",
	["Comic"] 	= "Interface\\AddOns\\oCB\\fonts\\comic.ttf",
	["Cooline"] 	= "Interface\\AddOns\\oCB\\fonts\\cooline.ttf",
	["Creeper"] 	= "Interface\\AddOns\\oCB\\fonts\\creeper.ttf",
	["Defused"] 	= "Interface\\AddOns\\oCB\\fonts\\defused.ttf",
	["Exocet"] 	= "Interface\\AddOns\\oCB\\fonts\\exocet.ttf",
	["FuturaBold"] 	= "Interface\\AddOns\\oCB\\fonts\\FuturaBold.ttf",
	["Mailrays"]	= "Interface\\AddOns\\oCB\\fonts\\mailrays.ttf",
	["Pepsi"] 	= "Interface\\AddOns\\oCB\\fonts\\pepsi.ttf",
	["Porky"] 	= "Interface\\AddOns\\oCB\\fonts\\porky.ttf",
	["Signature"] 	= "Interface\\AddOns\\oCB\\fonts\\signature.ttf",
	["Visitor1"] 	= "Interface\\AddOns\\oCB\\fonts\\visitor1.ttf",
	["Visitor2"] 	= "Interface\\AddOns\\oCB\\fonts\\visitor2.ttf",
	["Yellowjacket"] 	= "Interface\\AddOns\\oCB\\fonts\\yellowjacket.ttf",
	["Friz Quadrata"] 	= "Fonts\\FRIZQT__.TTF",
	["Arial Narrow"] 	= "Fonts\\ARIALN.TTF",
	["Skurri"] 	= "Fonts\\skurri.ttf",
	["Morpheus"] 	= "Fonts\\MORPHEUS.ttf"
}

oCB = AceLibrary("AceAddon-2.0"):new("AceEvent-2.0", "AceDebug-2.0", "AceHook-2.0", "AceDB-2.0", "AceConsole-2.0")
local waterfall 		= AceLibrary("Waterfall-1.0")
local PlayerClass 	= UnitClass("player")

local AtlasLootCache = {}

function oCB:AtlasLootSearch(spellID)
	if AtlasLootCache[spellID] then
		return AtlasLootCache[spellID]
	end

	-- Get icon from AtlatLoot addon if present
	if AtlasLoot_Data and AtlasLoot_Data['AtlasLootCrafting'] then
		local T = AtlasLoot_Data['AtlasLootCrafting']

		-- Profession is the name of the table, like JewelcraftingApprentice1
		-- Items is the table
		for Profession, Items in pairs(T) do
			for I = 1, getn(Items) do
				local ID = string_gsub(Items[I][1], '%D', '')
				-- i is a string with spell information
				-- 1 is spellID
				-- 2 is the icon name
				-- 3 is item quality and item name

				if ID == tostring(spellID) then
					local Cache = {}
					
					local function GetQuality(s)
						local C
						local QualityColors = {
							[1] = {	R = 1,		G = 1, 		B = 1		}, -- common
							[2] = {	R = 0.12,	G = 1, 		B = 0		}, -- uncommon
							[3] = {	R = 0,		G = 0.44, 	B = 0.87	}, -- rare
							[4] = {	R = 0.64,	G = 0.21, 	B = 0.93	}, -- epic
							[5] = {	R = 1,		G = 0.5, 	B = 0		}, -- legendary
						}
						
						local _, _, Q = string.find(s, '=q(%d+)')
						
						if Q then
							C = QualityColors[tonumber(Q)]
						end
						
						return C
					end
					
					local function GetProfession(Table)
						local P = AtlasLoot_TableNames[Table][1]
						local colonIndex = string.find(P, ':')
						local P = (colonIndex and string.sub(P, 1, colonIndex - 1)) or P
						
						return P
					end
					
					Cache.Icon = Icon(Items[I][2])
					Cache.Quality = GetQuality(Items[I][3])
					Cache.Profession = GetProfession(Profession)
					
					AtlasLootCache[spellID] = Cache

					return AtlasLootCache[spellID]
				end
			end
		end
	end
	
	AtlasLootCache[spellID] = {Icon = nil, Quality = nil, Profession = nil}
	
	return AtlasLootCache[spellID]
end

function oCB:ShowTest()
	oCBCastSent = GetTime() - 0.666
	oCBIcon="Interface\\Icons\\Trade_Engineering"

	self:CastStart("Drag me", 3.5, true, true)
	self:SpellDelayed(0.5)
	self:TargetCastStart("TargetBar", "Drag me (target)")
	self:MIRROR_TIMER_START("EXHAUSTION", 0, 10, 1, 0, EXHAUSTION_LABEL)
	self:MIRROR_TIMER_START("BREATH", 0, 10, 1, 0, BREATH_LABEL)

	if PlayerClass == "Hunter" then
		self:MIRROR_TIMER_START("FEIGNDEATH", 0, 10, 1, 0, BS["Feign Death"])
	end

	for type, frame in pairs(self.frames) do
		frame:EnableMouse(true)
	end
end

function oCB:HideTest()
	self:SpellStop(true)
	self:TargetCastStop("TargetBar", "Drag me (target)")
	self:MIRROR_TIMER_STOP("EXHAUSTION")
	self:MIRROR_TIMER_STOP("BREATH")
	
	if PlayerClass == "Hunter" then
		self:MIRROR_TIMER_STOP("FEIGNDEATH")
	end

	for type, frame in pairs(self.frames) do
		frame:EnableMouse(false)
	end
	
	oCB.CastMode = nil
end

function oCB:OnInitialize()
	self.dewdrop = AceLibrary("Dewdrop-2.0")
	self.Textures = Textures
	self.Fonts = Fonts
	self.Borders = Borders
	self.Outlines = Outlines

	oCB_consoleOptions = {
		type = 'group',
		icon = "Interface\\AddOns\\oCB\\Icon",
		args = {
			lock = {
				name = "Lock", type = 'toggle', order = 2,
				desc = "Lock/Unlock the casting bar.",
				get = function() return self.db.profile.lock end,
				set = function() self.db.profile.lock = not self.db.profile.lock if not self.db.profile.lock then self:ShowTest() else oCB:HideTest() end end
			},
			castingbar = {
				name = "Casting Bar", type = 'group', order = 3,
				desc = "Casting Bar", 
				args = {
					border = {
						name = "Border", type = 'text', order = 3,
						desc = "Toggle the border.",
						get = function() return self.db.profile.CastingBar.edgeFile end,
						set = function(v)
							self.db.profile.CastingBar.edgeFile = v
							self:Layout("CastingBar")
						end,
						validate = {"None", "Default", "Tooltip", "Dialogue"}
					},
					width = {
						name = "Width", type = 'range', min = 10, max = 500, step = 1, order = 1,
						desc = "Set the width of the casting bar.",
						get = function() return self.db.profile.CastingBar.width end,
						set = function(v)
							self.db.profile.CastingBar.width = v
							self:Layout("CastingBar")
						end
					},
					height = {
						name = "Height", type = 'range', min = 5, max = 50, step = 1, order = 2,
						desc = "Set the height of the casting bar.",
						get = function() return self.db.profile.CastingBar.height end,
						set = function(v)
							self.db.profile.CastingBar.height = v
							self:Layout("CastingBar")
						end
					},
					timeformat = {
						name = "Time format", type = 'text', order = 3,
						desc = "Toggle the time format.",
						get = function() return self.db.profile.CastingBar.TimeFormat end,
						set = function(v)
							self.db.profile.CastingBar.TimeFormat = v
						end,
						validate = {"4.5 / 10", "4.5"}
					},
					texture = {
						name = "Texture", type = 'text', order = 4,
						desc = "Toggle the texture.",
						get = function() return self.db.profile.CastingBar.texture end,
						set = function(v)
							self.db.profile.CastingBar.texture = v
							self:Layout("CastingBar")
						end,
						validate = {"Aluminium", "Armory", "BantoBar", "Bars", "Blizzard", "Bumps", "Button", "Charcoal", "Cilo", "Cloud", "Comet", "Dabs", "DarkBottom", "Diagonal", "Empty", "Falumn", "Fifths", "Flat", "Fourths", "Frost", "Glamour", "Glamour2", "Glamour3", "Glamour4", "Glamour5", "Glamour6", "Glamour7", "Glass", "Glaze", "Glaze2", "Gloss", "Graphite", "Grid", "Hatched", "Healbot", "LiteStep", "LiteStepLite", "Lyfe", "Melli", "MelliDark", "MelliDarkRough", "Minimalist", "Default", "Otravi", "Outline", "Perl", "Perl2", "Pill", "Rain", "Rocks", "Round", "Ruben", "Runes", "Skewed", "Smooth", "Smoothv2", "Smudge", "Steel", "Striped", "Tube", "Water", "Wglass", "Wisps", "Xeon"}
					},
					hideicon = {
						name = "Hide spell icon", type = 'toggle', order = 5,
						desc = "Show/Hide the spell icon.",
						get = function() return self.db.profile.CastingBar.hideIcon end,
						set = function() self.db.profile.CastingBar.hideIcon = not self.db.profile.CastingBar.hideIcon self:Layout("CastingBar") end
					},
					hidelagbar = {
						name = "Hide latency bar", type = 'toggle', order = 6,
						desc = "Show/Hide the latency bar.",
						get = function() return self.db.profile.CastingBar.hideLagBar end,
						set = function() self.db.profile.CastingBar.hideLagBar = not self.db.profile.CastingBar.hideLagBar self:Layout("CastingBar") end
					},
					texts = {
						name = "Texts", type = 'group', order = 3,
						desc = "Set the font settings of different elements.",
						args = {
							spell = {
								name = "Spell", type = 'group',
								desc = "Spell font settings",
								args = {
									size = {
										name = "Size", type = 'range', min = 6, max = 32, step = 1,
										desc = "Set the font size on the spellname.",
										get = function() return self.db.profile.CastingBar.spellSize end,
										set = function(v)
											self.db.profile.CastingBar.spellSize = v
											self:Layout("CastingBar")
										end
									},
									font = {
										name = "Font", type = 'text',
										desc = "Choose the font.",
										get = function() return self.db.profile.CastingBar.spellFont end,
										set = function(v)
											self.db.profile.CastingBar.spellFont = v
											self:Layout("CastingBar")
										end,
										validate = {"Adventure", "Backsplatter", "Bazooka", "BlackCastleMF", "Budhand", "Comic", "Cooline", "Creeper", "Defused", "Exocet", "FuturaBold", "Mailrays", "Pepsi", "Porky", "Signature", "Visitor1", "Visitor2", "Yellowjacket", "Friz Quadrata", "Arial Narrow", "Skurri", "Morpheus"}
									},
									outline = {
										name = "Outline", type = 'text',
										desc = "Choose the Outline.",
										get = function() return self.db.profile.CastingBar.spellOutline end,
										set = function(v)
											self.db.profile.CastingBar.spellOutline = v
											self:Layout("CastingBar")
										end,
										validate = {"None", "Normal", "Thick"}
									},
									rankstyle = {
										name = "Spell rank", type = 'group', 
										desc = "Change the rank style.",
										args = {
											disable = {
												name = "Show rank", type = 'toggle',
												desc = "Toggle the rank.",
												get = function() return self.db.profile.CastingBar.spellShowRank end,
												set = function()
													self.db.profile.CastingBar.spellShowRank = not self.db.profile.CastingBar.spellShowRank
													self:Layout("CastingBar")
												end
											},
											short = {
												name = "Short", type = 'toggle',
												desc = "Short rank style.",
												get = function() return self.db.profile.CastingBar.spellShortRank end,
												set = function()
													self.db.profile.CastingBar.spellShortRank = not self.db.profile.CastingBar.spellShortRank
													self:Layout("CastingBar")
												end
											},
											roman = {
												name = "Roman numbers", type = 'toggle',
												desc = "Show rank with Roman numbers.",
												get = function() return self.db.profile.CastingBar.spellRomanRank end,
												set = function()
													self.db.profile.CastingBar.spellRomanRank = not self.db.profile.CastingBar.spellRomanRank
													self:Layout("CastingBar")
												end
											},
										}
									},
									shadow = {
										name = "Shadow", type = 'toggle',
										desc = "Toggle shadow.",
										get = function() return self.db.profile.CastingBar.spellFontShadow end,
										set = function() self.db.profile.CastingBar.spellFontShadow = not self.db.profile.CastingBar.spellFontShadow self:Layout("CastingBar") end
									},
									shadowoffset = {
										name = "Shadow Offset", type = 'group', hidden = function() return not self.db.profile.CastingBar.spellFontShadow end,
										desc = "Shadow offset settings",
										args = {
											x = {
												name = "Offset X", type = 'range', min = -10, max = 10, step = 1,
												desc = "Set the font shadow offset.",
												get = function() return self.db.profile.CastingBar.spellFontShadowOffsetX end,
												set = function(v)
													self.db.profile.CastingBar.spellFontShadowOffsetX = v
													self:Layout("CastingBar")
												end
											},
											y = {
												name = "Offset Y", type = 'range', min = -10, max = 10, step = 1,
												desc = "Set the font shadow offset.",
												get = function() return self.db.profile.CastingBar.spellFontShadowOffsetY end,
												set = function(v)
													self.db.profile.CastingBar.spellFontShadowOffsetY = v
													self:Layout("CastingBar")
												end
											},
										}
									},
									monochrome = {
										name = "Monochrome", type = 'toggle',
										desc = "Toggle monochrome.",
										get = function() return self.db.profile.CastingBar.spellFontMonochrome end,
										set = function() self.db.profile.CastingBar.spellFontMonochrome = not self.db.profile.CastingBar.spellFontMonochrome self:Layout("CastingBar") end
									},
								}				
							},
							time = {
								name = "Time", type = 'group',
								desc = "Spell time settings",
								args = {
									size = {
										name = "Size", type = 'range', min = 6, max = 32, step = 1,
										desc = "Set the font size on the spell time.",
										get = function() return self.db.profile.CastingBar.timeSize end,
										set = function(v)
											self.db.profile.CastingBar.timeSize = v
											self:Layout("CastingBar")
										end
									},
									font = {
										name = "Font", type = 'text',
										desc = "Choose the font.",
										get = function() return self.db.profile.CastingBar.timeFont end,
										set = function(v)
											self.db.profile.CastingBar.timeFont = v
											self:Layout("CastingBar")
										end,
										validate = {"Adventure", "Backsplatter", "Bazooka", "BlackCastleMF", "Budhand", "Comic", "Cooline", "Creeper", "Defused", "Exocet", "FuturaBold", "Mailrays", "Pepsi", "Porky", "Signature", "Visitor1", "Visitor2", "Yellowjacket", "Friz Quadrata", "Arial Narrow", "Skurri", "Morpheus"}
									},
									outline = {
										name = "Outline", type = 'text',
										desc = "Choose the Outline.",
										get = function() return self.db.profile.CastingBar.timeOutline end,
										set = function(v)
											self.db.profile.CastingBar.timeOutline = v
											self:Layout("CastingBar")
										end,
										validate = {"None", "Normal", "Thick"}
									},
									shadow = {
										name = "Shadow", type = 'toggle',
										desc = "Toggle shadow.",
										get = function() return self.db.profile.CastingBar.timeFontShadow end,
										set = function() self.db.profile.CastingBar.timeFontShadow = not self.db.profile.CastingBar.timeFontShadow self:Layout("CastingBar") end
									},
									shadowoffset = {
										name = "Shadow Offset", type = 'group', hidden = function() return not self.db.profile.CastingBar.timeFontShadow end,
										desc = "Shadow offset settings",
										args = {
											x = {
												name = "Offset X", type = 'range', min = -10, max = 10, step = 1,
												desc = "Set the font shadow offset.",
												get = function() return self.db.profile.CastingBar.timeFontShadowOffsetX end,
												set = function(v)
													self.db.profile.CastingBar.timeFontShadowOffsetX = v
													self:Layout("CastingBar")
												end
											},
											y = {
												name = "Offset Y", type = 'range', min = -10, max = 10, step = 1,
												desc = "Set the font shadow offset.",
												get = function() return self.db.profile.CastingBar.timeFontShadowOffsetY end,
												set = function(v)
													self.db.profile.CastingBar.timeFontShadowOffsetY = v
													self:Layout("CastingBar")
												end
											},
										}
									},
									monochrome = {
										name = "Monochrome", type = 'toggle',
										desc = "Toggle monochrome.",
										get = function() return self.db.profile.CastingBar.timeFontMonochrome end,
										set = function() self.db.profile.CastingBar.timeFontMonochrome = not self.db.profile.CastingBar.timeFontMonochrome self:Layout("CastingBar") end
									},
								}				
							},
							delay = {
								name = "Delay", type = 'group',
								desc = "Spell delay settings",
								args = {
									size = {
										name = "Size", type = 'range', min = 6, max = 32, step = 1,
										desc = "Set the font size on the spell delay, when casting.",
										get = function() return self.db.profile.CastingBar.delaySize end,
										set = function(v)
											self.db.profile.CastingBar.delaySize = v
											self:Layout("CastingBar")
										end
									},
									offset = {
										name = "Horizontal offset", type = 'range', min = 0, max = 100, step = 1,
										desc = "Set the delay horizontal offset.",
										get = function() return self.db.profile.CastingBar.delayOffset end,
										set = function(v)
											self.db.profile.CastingBar.delayOffset = v
											self:Layout("CastingBar")
										end
									},
									font = {
										name = "Font", type = 'text',
										desc = "Choose the font.",
										get = function() return self.db.profile.CastingBar.delayFont end,
										set = function(v)
											self.db.profile.CastingBar.delayFont = v
											self:Layout("CastingBar")
										end,
										validate = {"Adventure", "Backsplatter", "Bazooka", "BlackCastleMF", "Budhand", "Comic", "Cooline", "Creeper", "Defused", "Exocet", "FuturaBold", "Mailrays", "Pepsi", "Porky", "Signature", "Visitor1", "Visitor2", "Yellowjacket", "Friz Quadrata", "Arial Narrow", "Skurri", "Morpheus"}
									},
									outline = {
										name = "Outline", type = 'text',
										desc = "Choose the Outline.",
										get = function() return self.db.profile.CastingBar.delayOutline end,
										set = function(v)
											self.db.profile.CastingBar.delayOutline = v
											self:Layout("CastingBar")
										end,
										validate = {"None", "Normal", "Thick"}
									},
									shadow = {
										name = "Shadow", type = 'toggle',
										desc = "Toggle shadow.",
										get = function() return self.db.profile.CastingBar.delayFontShadow end,
										set = function() self.db.profile.CastingBar.delayFontShadow = not self.db.profile.CastingBar.delayFontShadow self:Layout("CastingBar") end
									},
									shadowoffset = {
										name = "Shadow Offset", type = 'group', hidden = function() return not self.db.profile.CastingBar.delayFontShadow end,
										desc = "Shadow offset settings",
										args = {
											x = {
												name = "Offset X", type = 'range', min = -10, max = 10, step = 1,
												desc = "Set the font shadow offset.",
												get = function() return self.db.profile.CastingBar.delayFontShadowOffsetX end,
												set = function(v)
													self.db.profile.CastingBar.delayFontShadowOffsetX = v
													self:Layout("CastingBar")
												end
											},
											y = {
												name = "Offset Y", type = 'range', min = -10, max = 10, step = 1,
												desc = "Set the font shadow offset.",
												get = function() return self.db.profile.CastingBar.delayFontShadowOffsetY end,
												set = function(v)
													self.db.profile.CastingBar.delayFontShadowOffsetY = v
													self:Layout("CastingBar")
												end
											},
										}
									},
									monochrome = {
										name = "Monochrome", type = 'toggle',
										desc = "Toggle monochrome.",
										get = function() return self.db.profile.CastingBar.delayFontMonochrome end,
										set = function() self.db.profile.CastingBar.delayFontMonochrome = not self.db.profile.CastingBar.delayFontMonochrome self:Layout("CastingBar") end
									},
								}				
							},
							latency = {
								name = "Latency", type = 'group',
								desc = "Latency settings",
								args = {
									size = {
										name = "Size", type = 'range', min = 6, max = 32, step = 1,
										desc = "Set the font size on the spell delay, when casting.",
										get = function() return self.db.profile.CastingBar.latencySize end,
										set = function(v)
											self.db.profile.CastingBar.latencySize = v
											self:Layout("CastingBar")
										end
									},
									font = {
										name = "Font", type = 'text',
										desc = "Choose the font.",
										get = function() return self.db.profile.CastingBar.latencyFont end,
										set = function(v)
											self.db.profile.CastingBar.latencyFont = v
											self:Layout("CastingBar")
										end,
										validate = {"Adventure", "Backsplatter", "Bazooka", "BlackCastleMF", "Budhand", "Comic", "Cooline", "Creeper", "Defused", "Exocet", "FuturaBold", "Mailrays", "Pepsi", "Porky", "Signature", "Visitor1", "Visitor2", "Yellowjacket", "Friz Quadrata", "Arial Narrow", "Skurri", "Morpheus"}
									},
									outline = {
										name = "Outline", type = 'text',
										desc = "Choose the Outline.",
										get = function() return self.db.profile.CastingBar.latencyOutline end,
										set = function(v)
											self.db.profile.CastingBar.latencyOutline = v
											self:Layout("CastingBar")
										end,
										validate = {"None", "Normal", "Thick"}
									},
									shadow = {
										name = "Shadow", type = 'toggle',
										desc = "Toggle shadow.",
										get = function() return self.db.profile.CastingBar.latencyFontShadow end,
										set = function() self.db.profile.CastingBar.latencyFontShadow = not self.db.profile.CastingBar.latencyFontShadow self:Layout("CastingBar") end
									},
									shadowoffset = {
										name = "Shadow Offset", type = 'group', hidden = function() return not self.db.profile.CastingBar.latencyFontShadow end,
										desc = "Shadow offset settings",
										args = {
											x = {
												name = "Offset X", type = 'range', min = -10, max = 10, step = 1,
												desc = "Set the font shadow offset.",
												get = function() return self.db.profile.CastingBar.latencyFontShadowOffsetX end,
												set = function(v)
													self.db.profile.CastingBar.latencyFontShadowOffsetX = v
													self:Layout("CastingBar")
												end
											},
											y = {
												name = "Offset Y", type = 'range', min = -10, max = 10, step = 1,
												desc = "Set the font shadow offset.",
												get = function() return self.db.profile.CastingBar.latencyFontShadowOffsetY end,
												set = function(v)
													self.db.profile.CastingBar.latencyFontShadowOffsetY = v
													self:Layout("CastingBar")
												end
											},
										}
									},
									monochrome = {
										name = "Monochrome", type = 'toggle',
										desc = "Toggle monochrome.",
										get = function() return self.db.profile.CastingBar.latencyFontMonochrome end,
										set = function() self.db.profile.CastingBar.latencyFontMonochrome = not self.db.profile.CastingBar.latencyFontMonochrome self:Layout("CastingBar") end
									},
								}				
							}
						}
					}
				}
			},
			targetbar = {
				name = "Target Bar", type = 'group', order = 4,
				desc = "Target Cast Bar",
				args = {
					width = {
						name = "Width", type = 'range', min = 10, max = 500, step = 1, order = 1,
						desc = "Set the width of the target cast bar.",
						get = function() return self.db.profile.TargetBar.width end,
						set = function(v)
							self.db.profile.TargetBar.width = v
							self:Layout("TargetBar", "TargetBar")
						end
					},
					height = {
						name = "Height", type = 'range', min = 5, max = 50, step = 1, order = 2,
						desc = "Set the height of the target cast bar.",
						get = function() return self.db.profile.TargetBar.height end,
						set = function(v)
							self.db.profile.TargetBar.height = v
							self:Layout("TargetBar", "TargetBar")
						end
					},
					border = {
						name = "Border", type = 'text', order = 3,
						desc = "Toggle the border.",
						get = function() return self.db.profile.TargetBar.edgeFile end,
						set = function(v)
							self.db.profile.TargetBar.edgeFile = v
							self:Layout("TargetBar", "TargetBar")
						end,
						validate = {"None", "Default", "Tooltip", "Dialogue"}
					},
					texture = {
						name = "Texture", type = 'text', order = 4,
						desc = "Toggle the texture.",
						get = function() return self.db.profile.TargetBar.texture end,
						set = function(v)
							self.db.profile.TargetBar.texture = v
							self:Layout("TargetBar", "TargetBar")
						end,
						validate = {"Aluminium", "Armory", "BantoBar", "Bars", "Blizzard", "Bumps", "Button", "Charcoal", "Cilo", "Cloud", "Comet", "Dabs", "DarkBottom", "Diagonal", "Empty", "Falumn", "Fifths", "Flat", "Fourths", "Frost", "Glamour", "Glamour2", "Glamour3", "Glamour4", "Glamour5", "Glamour6", "Glamour7", "Glass", "Glaze", "Glaze2", "Gloss", "Graphite", "Grid", "Hatched", "Healbot", "LiteStep", "LiteStepLite", "Lyfe", "Melli", "MelliDark", "MelliDarkRough", "Minimalist", "Default", "Otravi", "Outline", "Perl", "Perl2", "Pill", "Rain", "Rocks", "Round", "Ruben", "Runes", "Skewed", "Smooth", "Smoothv2", "Smudge", "Steel", "Striped", "Tube", "Water", "Wglass", "Wisps", "Xeon"}
					},
					timeformat = {
						name = "Time format", type = 'text', order = 4,
						desc = "Toggle the time format.",
						get = function() return self.db.profile.TargetBar.TimeFormat end,
						set = function(v)
							self.db.profile.TargetBar.TimeFormat = v
						end,
						validate = {"4.5 / 10", "4.5"}
					},
					hideicon = {
						name = "Hide spell icon", type = 'toggle', order = 5,
						desc = "Show/Hide the spell icon.",
						get = function() return self.db.profile.TargetBar.hideIcon end,
						set = function()
							self.db.profile.TargetBar.hideIcon = not self.db.profile.TargetBar.hideIcon
							self:Layout("TargetBar", "TargetBar")
						end
					},
					instantcasts = {
						name = "Show instant casts", type = 'toggle', order = 5,
						desc = "Shows instant casts that have no cast time, like buffs, Fire Blast or Heroic Strike.",
						get = function() return self.db.profile.TargetBar.showInstantCasts end,
						set = function()
							self.db.profile.TargetBar.showInstantCasts = not self.db.profile.TargetBar.showInstantCasts
							self:Layout("TargetBar", "TargetBar")
						end
					},
					instantcastsduration = {
						name = "Instant casts duration", type = 'range', min = 0.1, max = 1.5, step = 0.1, order = 6,
						desc = "Set the duration for how long an instant cast bar will fade out.",
						get = function() return self.db.profile.TargetBar.instantCastsDuration end,
						set = function(v)
							self.db.profile.TargetBar.instantCastsDuration = v
							self:Layout("TargetBar", "TargetBar")
						end
					},
					font = {
						name = "Font", type = 'group',
						desc = "Set the font size of different elements.",
						args = {
							spell = {
								name = "Spell", type = 'group',
								desc = "Spell font settings",
								args = {
									size = {
										name = "Size", type = 'range', min = 6, max = 32, step = 1,
										desc = "Set the font size on the spellname.",
										get = function() return self.db.profile.TargetBar.spellSize end,
										set = function(v)
											self.db.profile.TargetBar.spellSize = v
											self:Layout("TargetBar", "TargetBar")
										end
									},
									font = {
										name = "Font", type = 'text',
										desc = "Choose the font.",
										get = function() return self.db.profile.TargetBar.spellFont end,
										set = function(v)
											self.db.profile.TargetBar.spellFont = v
											self:Layout("TargetBar", "TargetBar")
										end,
										validate = {"Adventure", "Backsplatter", "Bazooka", "BlackCastleMF", "Budhand", "Comic", "Cooline", "Creeper", "Defused", "Exocet", "FuturaBold", "Mailrays", "Pepsi", "Porky", "Signature", "Visitor1", "Visitor2", "Yellowjacket", "Friz Quadrata", "Arial Narrow", "Skurri", "Morpheus"}
									},
									outline = {
										name = "Outline", type = 'text',
										desc = "Choose the Outline.",
										get = function() return self.db.profile.TargetBar.spellOutline end,
										set = function(v)
											self.db.profile.TargetBar.spellOutline = v
											self:Layout("TargetBar", "TargetBar")
										end,
										validate = {"None", "Normal", "Thick"}
									},
									shadow = {
										name = "Shadow", type = 'toggle',
										desc = "Toggle shadow.",
										get = function() return self.db.profile.TargetBar.spellFontShadow end,
										set = function() self.db.profile.TargetBar.spellFontShadow = not self.db.profile.TargetBar.spellFontShadow self:Layout("TargetBar", "TargetBar") end
									},
									shadowoffset = {
										name = "Shadow Offset", type = 'group', hidden = function() return not self.db.profile.TargetBar.spellFontShadow end,
										desc = "Shadow offset settings",
										args = {
											x = {
												name = "Offset X", type = 'range', min = -10, max = 10, step = 1,
												desc = "Set the font shadow offset.",
												get = function() return self.db.profile.TargetBar.spellFontShadowOffsetX end,
												set = function(v)
													self.db.profile.TargetBar.spellFontShadowOffsetX = v
													self:Layout("TargetBar", "TargetBar")
												end
											},
											y = {
												name = "Offset Y", type = 'range', min = -10, max = 10, step = 1,
												desc = "Set the font shadow offset.",
												get = function() return self.db.profile.TargetBar.spellFontShadowOffsetY end,
												set = function(v)
													self.db.profile.TargetBar.spellFontShadowOffsetY = v
													self:Layout("TargetBar", "TargetBar")
												end
											},
										}
									},
									monochrome = {
										name = "Monochrome", type = 'toggle',
										desc = "Toggle monochrome.",
										get = function() return self.db.profile.TargetBar.spellFontMonochrome end,
										set = function() self.db.profile.TargetBar.spellFontMonochrome = not self.db.profile.TargetBar.spellFontMonochrome self:Layout("TargetBar", "TargetBar") end
									},
								}
							},
							time = {
								name = "Time", type = 'group',
								desc = "Spell time settings",
								args = {
									size = {
										name = "Size", type = 'range', min = 6, max = 32, step = 1,
										desc = "Set the font size on the spell time.",
										get = function() return self.db.profile.TargetBar.timeSize end,
										set = function(v)
											self.db.profile.TargetBar.timeSize = v
											self:Layout("TargetBar", "TargetBar")
										end
									},
									font = {
										name = "Font", type = 'text',
										desc = "Choose the font.",
										get = function() return self.db.profile.TargetBar.timeFont end,
										set = function(v)
											self.db.profile.TargetBar.timeFont = v
											self:Layout("TargetBar", "TargetBar")
										end,
										validate = {"Adventure", "Backsplatter", "Bazooka", "BlackCastleMF", "Budhand", "Comic", "Cooline", "Creeper", "Defused", "Exocet", "FuturaBold", "Mailrays", "Pepsi", "Porky", "Signature", "Visitor1", "Visitor2", "Yellowjacket", "Friz Quadrata", "Arial Narrow", "Skurri", "Morpheus"}
									},
									outline = {
										name = "Outline", type = 'text',
										desc = "Choose the Outline.",
										get = function() return self.db.profile.TargetBar.timeOutline end,
										set = function(v)
											self.db.profile.TargetBar.timeOutline = v
											self:Layout("TargetBar", "TargetBar")
										end,
										validate = {"None", "Normal", "Thick"}
									},
									shadow = {
										name = "Shadow", type = 'toggle',
										desc = "Toggle shadow.",
										get = function() return self.db.profile.TargetBar.timeFontShadow end,
										set = function() self.db.profile.TargetBar.timeFontShadow = not self.db.profile.TargetBar.timeFontShadow self:Layout("TargetBar", "TargetBar") end
									},
									shadowoffset = {
										name = "Shadow Offset", type = 'group', hidden = function() return not self.db.profile.TargetBar.timeFontShadow end,
										desc = "Shadow offset settings",
										args = {
											x = {
												name = "Offset X", type = 'range', min = -10, max = 10, step = 1,
												desc = "Set the font shadow offset.",
												get = function() return self.db.profile.TargetBar.timeFontShadowOffsetX end,
												set = function(v)
													self.db.profile.TargetBar.timeFontShadowOffsetX = v
													self:Layout("TargetBar", "TargetBar")
												end
											},
											y = {
												name = "Offset Y", type = 'range', min = -10, max = 10, step = 1,
												desc = "Set the font shadow offset.",
												get = function() return self.db.profile.TargetBar.timeFontShadowOffsetY end,
												set = function(v)
													self.db.profile.TargetBar.timeFontShadowOffsetY = v
													self:Layout("TargetBar", "TargetBar")
												end
											},
										}
									},
									monochrome = {
										name = "Monochrome", type = 'toggle',
										desc = "Toggle monochrome.",
										get = function() return self.db.profile.TargetBar.timeFontMonochrome end,
										set = function() self.db.profile.TargetBar.timeFontMonochrome = not self.db.profile.TargetBar.timeFontMonochrome self:Layout("TargetBar", "TargetBar") end
									},
								}				
							}
						}
					}
				}
			},			
			mirrorbar = {
				name = "Mirror Bar", type = 'group', order = 5,
				desc = "Mirror Bar",
				args = {
					width = {
						name = "Width", type = 'range', min = 10, max = 500, step = 1, order = 1,
						desc = "Set the width of the mirror bar.",
						get = function() return self.db.profile.MirrorBar.width end,
						set = function(v)
							self.db.profile.MirrorBar.width = v
							self:Layout("BREATH", "MirrorBar")
							self:Layout("EXHAUSTION", "MirrorBar")
							self:Layout("FEIGNDEATH", "MirrorBar")
						end
					},
					height = {
						name = "Height", type = 'range', min = 5, max = 50, step = 1, order = 2,
						desc = "Set the height of the mirror bar.",
						get = function() return self.db.profile.MirrorBar.height end,
						set = function(v)
							self.db.profile.MirrorBar.height = v
							self:Layout("BREATH", "MirrorBar")
							self:Layout("EXHAUSTION", "MirrorBar")
							self:Layout("FEIGNDEATH", "MirrorBar")
						end
					},
					border = {
						name = "Border", type = 'text', order = 3,
						desc = "Toggle the border.",
						get = function() return self.db.profile.MirrorBar.edgeFile end,
						set = function(v)
							self.db.profile.MirrorBar.edgeFile = v
							self:Layout("BREATH", "MirrorBar")
							self:Layout("EXHAUSTION", "MirrorBar")
							self:Layout("FEIGNDEATH", "MirrorBar")
						end,
						validate = {"None", "Default", "Tooltip", "Dialogue"}
					},
					texture = {
						name = "Texture", type = 'text', order = 4,
						desc = "Toggle the texture.",
						get = function() return self.db.profile.MirrorBar.texture end,
						set = function(v)
							self.db.profile.MirrorBar.texture = v
							self:Layout("BREATH", "MirrorBar")
							self:Layout("EXHAUSTION", "MirrorBar")
							self:Layout("FEIGNDEATH", "MirrorBar")
						end,
						validate = {"Aluminium", "Armory", "BantoBar", "Bars", "Blizzard", "Bumps", "Button", "Charcoal", "Cilo", "Cloud", "Comet", "Dabs", "DarkBottom", "Diagonal", "Empty", "Falumn", "Fifths", "Flat", "Fourths", "Frost", "Glamour", "Glamour2", "Glamour3", "Glamour4", "Glamour5", "Glamour6", "Glamour7", "Glass", "Glaze", "Glaze2", "Gloss", "Graphite", "Grid", "Hatched", "Healbot", "LiteStep", "LiteStepLite", "Lyfe", "Melli", "MelliDark", "MelliDarkRough", "Minimalist", "Default", "Otravi", "Outline", "Perl", "Perl2", "Pill", "Rain", "Rocks", "Round", "Ruben", "Runes", "Skewed", "Smooth", "Smoothv2", "Smudge", "Steel", "Striped", "Tube", "Water", "Wglass", "Wisps", "Xeon"}
					},
					hideicon = {
						name = "Hide Icon", type = 'toggle', order = 5,
						desc = "Show/Hide the icon.",
						get = function() return self.db.profile.MirrorBar.hideIcon end,
						set = function()
							self.db.profile.MirrorBar.hideIcon = not self.db.profile.MirrorBar.hideIcon
							self:Layout("BREATH", "MirrorBar")
							self:Layout("EXHAUSTION", "MirrorBar")
							self:Layout("FEIGNDEATH", "MirrorBar")
							end
					},
					font = {
						name = "Font", type = 'group',
						desc = "Set the font size of different elements.",
						args = {
							spell = {
								name = "Spell", type = 'group',
								desc = "Spell font settings",
								args = {
									size = {
										name = "Size", type = 'range', min = 6, max = 32, step = 1,
										desc = "Set the font size on the spellname.",
										get = function() return self.db.profile.MirrorBar.spellSize end,
										set = function(v)
											self.db.profile.MirrorBar.spellSize = v
											self:Layout("BREATH", "MirrorBar")
											self:Layout("EXHAUSTION", "MirrorBar")
											self:Layout("FEIGNDEATH", "MirrorBar")
										end
									},
									font = {
										name = "Font", type = 'text',
										desc = "Choose the font.",
										get = function() return self.db.profile.MirrorBar.spellFont end,
										set = function(v)
											self.db.profile.MirrorBar.spellFont = v
											self:Layout("BREATH", "MirrorBar")
											self:Layout("EXHAUSTION", "MirrorBar")
											self:Layout("FEIGNDEATH", "MirrorBar")
										end,
										validate = {"Adventure", "Backsplatter", "Bazooka", "BlackCastleMF", "Budhand", "Comic", "Cooline", "Creeper", "Defused", "Exocet", "FuturaBold", "Mailrays", "Pepsi", "Porky", "Signature", "Visitor1", "Visitor2", "Yellowjacket", "Friz Quadrata", "Arial Narrow", "Skurri", "Morpheus"}
									},
									outline = {
										name = "Outline", type = 'text',
										desc = "Choose the Outline.",
										get = function() return self.db.profile.MirrorBar.spellOutline end,
										set = function(v)
											self.db.profile.MirrorBar.spellOutline = v
											self:Layout("BREATH", "MirrorBar")
											self:Layout("EXHAUSTION", "MirrorBar")
											self:Layout("FEIGNDEATH", "MirrorBar")
										end,
										validate = {"None", "Normal", "Thick"}
									},
									shadow = {
										name = "Shadow", type = 'toggle',
										desc = "Toggle shadow.",
										get = function() return self.db.profile.MirrorBar.spellFontShadow end,
										set = function() self.db.profile.MirrorBar.spellFontShadow = not self.db.profile.MirrorBar.spellFontShadow self:Layout("BREATH", "MirrorBar") self:Layout("EXHAUSTION", "MirrorBar") self:Layout("FEIGNDEATH", "MirrorBar") end
									},
									shadowoffset = {
										name = "Shadow Offset", type = 'group', hidden = function() return not self.db.profile.MirrorBar.spellFontShadow end,
										desc = "Shadow offset settings",
										args = {
											x = {
												name = "Offset X", type = 'range', min = -10, max = 10, step = 1,
												desc = "Set the font shadow offset.",
												get = function() return self.db.profile.MirrorBar.spellFontShadowOffsetX end,
												set = function(v)
													self.db.profile.MirrorBar.spellFontShadowOffsetX = v
													self:Layout("BREATH", "MirrorBar")
													self:Layout("EXHAUSTION", "MirrorBar")
													self:Layout("FEIGNDEATH", "MirrorBar")
												end
											},
											y = {
												name = "Offset Y", type = 'range', min = -10, max = 10, step = 1,
												desc = "Set the font shadow offset.",
												get = function() return self.db.profile.MirrorBar.spellFontShadowOffsetY end,
												set = function(v)
													self.db.profile.MirrorBar.spellFontShadowOffsetY = v
													self:Layout("BREATH", "MirrorBar")
													self:Layout("EXHAUSTION", "MirrorBar")
													self:Layout("FEIGNDEATH", "MirrorBar")
												end
											},
										}
									},
									monochrome = {
										name = "Monochrome", type = 'toggle',
										desc = "Toggle monochrome.",
										get = function() return self.db.profile.MirrorBar.spellFontMonochrome end,
										set = function() self.db.profile.MirrorBar.spellFontMonochrome = not self.db.profile.MirrorBar.spellFontMonochrome self:Layout("BREATH", "MirrorBar") self:Layout("EXHAUSTION", "MirrorBar") self:Layout("FEIGNDEATH", "MirrorBar") end
									},
								}
							},
							time = {
								name = "Time", type = 'group',
								desc = "Spell time settings",
								args = {
									size = {
										name = "Size", type = 'range', min = 6, max = 32, step = 1,
										desc = "Set the font size on the spell time.",
										get = function() return self.db.profile.MirrorBar.timeSize end,
										set = function(v)
											self.db.profile.MirrorBar.timeSize = v
											self:Layout("BREATH", "MirrorBar")
											self:Layout("EXHAUSTION", "MirrorBar")
											self:Layout("FEIGNDEATH", "MirrorBar")
										end
									},
									font = {
										name = "Font", type = 'text',
										desc = "Choose the font.",
										get = function() return self.db.profile.MirrorBar.timeFont end,
										set = function(v)
											self.db.profile.MirrorBar.timeFont = v
											self:Layout("BREATH", "MirrorBar")
											self:Layout("EXHAUSTION", "MirrorBar")
											self:Layout("FEIGNDEATH", "MirrorBar")
										end,
										validate = {"Adventure", "Backsplatter", "Bazooka", "BlackCastleMF", "Budhand", "Comic", "Cooline", "Creeper", "Defused", "Exocet", "FuturaBold", "Mailrays", "Pepsi", "Porky", "Signature", "Visitor1", "Visitor2", "Yellowjacket", "Friz Quadrata", "Arial Narrow", "Skurri", "Morpheus"}
									},
									outline = {
										name = "Outline", type = 'text',
										desc = "Choose the Outline.",
										get = function() return self.db.profile.MirrorBar.timeOutline end,
										set = function(v)
											self.db.profile.MirrorBar.timeOutline = v
											self:Layout("BREATH", "MirrorBar")
											self:Layout("EXHAUSTION", "MirrorBar")
											self:Layout("FEIGNDEATH", "MirrorBar")
										end,
										validate = {"None", "Normal", "Thick"}
									},
									shadow = {
										name = "Shadow", type = 'toggle',
										desc = "Toggle shadow.",
										get = function() return self.db.profile.MirrorBar.timeFontShadow end,
										set = function() self.db.profile.MirrorBar.timeFontShadow = not self.db.profile.MirrorBar.timeFontShadow self:Layout("BREATH", "MirrorBar") self:Layout("EXHAUSTION", "MirrorBar") self:Layout("FEIGNDEATH", "MirrorBar") end
									},
									shadowoffset = {
										name = "Shadow Offset", type = 'group', hidden = function() return not self.db.profile.MirrorBar.timeFontShadow end,
										desc = "Shadow offset settings",
										args = {
											x = {
												name = "Offset X", type = 'range', min = -10, max = 10, step = 1,
												desc = "Set the font shadow offset.",
												get = function() return self.db.profile.MirrorBar.timeFontShadowOffsetX end,
												set = function(v)
													self.db.profile.MirrorBar.timeFontShadowOffsetX = v
													self:Layout("BREATH", "MirrorBar")
													self:Layout("EXHAUSTION", "MirrorBar")
													self:Layout("FEIGNDEATH", "MirrorBar")
												end
											},
											y = {
												name = "Offset Y", type = 'range', min = -10, max = 10, step = 1,
												desc = "Set the font shadow offset.",
												get = function() return self.db.profile.MirrorBar.timeFontShadowOffsetY end,
												set = function(v)
													self.db.profile.MirrorBar.timeFontShadowOffsetY = v
													self:Layout("BREATH", "MirrorBar")
													self:Layout("EXHAUSTION", "MirrorBar")
													self:Layout("FEIGNDEATH", "MirrorBar")
												end
											},
										}
									},
									monochrome = {
										name = "Monochrome", type = 'toggle',
										desc = "Toggle monochrome.",
										get = function() return self.db.profile.MirrorBar.timeFontMonochrome end,
										set = function() self.db.profile.MirrorBar.timeFontMonochrome = not self.db.profile.MirrorBar.timeFontMonochrome self:Layout("BREATH", "MirrorBar") self:Layout("EXHAUSTION", "MirrorBar") self:Layout("FEIGNDEATH", "MirrorBar") end
									},
								}				
							}
						}
					}
				}
			},
			colors = {
				name = "Colors", type = 'group', order = 6,
				desc = "Set the bar colors.",
				args = {
					spell = {
						name = "Spell", type = 'color',
						desc = "Sets the color of the casting bars on spells.",
						get = function()
							local v = self.db.profile.Colors.Casting
							return v.r,v.g,v.b
						end,
						set = function(r,g,b) self.db.profile.Colors.Casting = {r=r,g=g,b=b} end
					},
					success = {
						name = "Success", type = 'color',
						desc = "Sets the color of the casting bars on succsessful casts.",
						get = function()
							local v = self.db.profile.Colors.Complete
							return v.r,v.g,v.b
						end,
						set = function(r,g,b) self.db.profile.Colors.Complete = {r=r,g=g,b=b} end
					},
					channel = {
						name = "Channel", type = 'color',
						desc = "Sets the color of the casting bars while channeling.",
						get = function()
							local v = self.db.profile.Colors.Channel
							return v.r,v.g,v.b
						end,
						set = function(r,g,b) self.db.profile.Colors.Channel = {r=r,g=g,b=b} end
					},
					failed = {
						name = "Failed", type = 'color',
						desc = "Sets the color of the casting bars on failed casts.",
						get = function()
							local v = self.db.profile.Colors.Failed
							return v.r,v.g,v.b
						end,
						set = function(r,g,b) self.db.profile.Colors.Failed = {r=r,g=g,b=b} end
					},
					targetspell = {
						name = "Target Casting", type = 'color',
						desc = "Sets the color of the target cast bar.",
						get = function()
							local v = self.db.profile.Colors.TargetCasting
							return v.r,v.g,v.b
						end,
						set = function(r,g,b) self.db.profile.Colors.TargetCasting = {r=r,g=g,b=b} end
					},
					targetchannel = {
						name = "Target Channel", type = 'color',
						desc = "Sets the color of the target channel cast bar.",
						get = function()
							local v = self.db.profile.Colors.TargetChannel
							return v.r,v.g,v.b
						end,
						set = function(r,g,b) self.db.profile.Colors.TargetChannel = {r=r,g=g,b=b} end
					},					
					targetfailed = {
						name = "Target Interrupted", type = 'color',
						desc = "Sets the color of interrupted target casts.",
						get = function()
							local v = self.db.profile.Colors.TargetStopped
							return v.r,v.g,v.b
						end,
						set = function(r,g,b) self.db.profile.Colors.TargetStopped = {r=r,g=g,b=b} end
					},
					targetsuccess = {
						name = "Target Complete", type = 'color',
						desc = "Sets the color of completed target casts.",
						get = function()
							local v = self.db.profile.Colors.TargetComplete
							return v.r,v.g,v.b
						end,
						set = function(r,g,b) self.db.profile.Colors.TargetComplete = {r=r,g=g,b=b} end
					},
					flyingtransport = {
						name = "Flying transport", type = 'color',
						desc = "Sets the color of flying transport cast.",
						get = function()
							local v = self.db.profile.Colors.FlyingTransport
							return v.r,v.g,v.b
						end,
						set = function(r,g,b) self.db.profile.Colors.FlyingTransport = {r=r,g=g,b=b} end
					},
					unsilenceable = {
						name = "Unsilenceable", type = 'color',
						desc = "Sets the color of unsilencable cast.",
						get = function()
							local v = self.db.profile.Colors.Unsilenceable
							return v.r,v.g,v.b
						end,
						set = function(r,g,b) self.db.profile.Colors.Unsilenceable = {r=r,g=g,b=b} end
					},
				}
			},
			reset = {
				name = "Reset", type = 'group', order = 7,
				desc = "Reset all bars to default state.",
				args = {
					reset = {
						type='execute',
						name="Reset",
						desc="Reset all bars to default state",
						func = function() self:Reset() end
					}
				}
			}
		}
	}
	local slashOptions = {
		type = 'group',
		args={
		}
	}
	
	self:RegisterDB("oCBDB")
	self:RegisterDefaults("profile", Default)
	
	self:RegisterChatCommand({ "/oCB"}, function()	waterfall:Open('oCB3')	end)
	self:RegisterChatCommand({ "/oCBdd"}, function()
		oCB.dewdrop:Open(UIParent, 'children', oCB_consoleOptions, 'cursorX', true, 'cursorY', true) end)
	self:RegisterChatCommand({ "/oCBcl"},	oCB_consoleOptions)

	waterfall:Register('oCB3', 'aceOptions', oCB_consoleOptions, 'title','otravi Cast Bar','colorR', 0.8, 'colorG', 0.8, 'colorB', 0.5) 
    
	self:SetDebugging(false)
end

local OCB_CASTING = 1
local OCB_CHANNELING = 2
local OCB_FADEOUT = 3
local OCB_CAST_SUCCESS = 4

function oCB:Reset()
	self:ResetDB("profile")
	self:Layout("CastingBar")
	self:Layout("TargetBar", "TargetBar")
	self:Layout("BREATH", "MirrorBar")
	self:Layout("EXHAUSTION", "MirrorBar")
	self:Layout("FEIGNDEATH", "MirrorBar")
end

function oCB:OnEnable()
	if not self.frames then
		self.frames = {}
	end
	
	self:Events()
	self:HideBlizzCB()
	
	self:CreateFramework("CastingBar", "oCBFrame")
	self:CreateFramework("TargetBar", "oCBTargetFrame", "TargetBar")
	self:CreateFramework("BREATH", "oCBMirror1", "MirrorBar")
	self:CreateFramework("EXHAUSTION","oCBMirror2", "MirrorBar")
	self:CreateFramework("FEIGNDEATH","oCBMirror3", "MirrorBar")
	
	if not self.db.profile.lock then
		self:ShowTest()
	end
end

function oCB:Events()
	self:RegisterEvent("UNIT_CASTEVENT", "CastEvent")

	self:RegisterEvent("SPELLCAST_CHANNEL_START", "SpellChannelStart")
	self:RegisterEvent("SPELLCAST_CHANNEL_STOP", "SpellChannelStop")
	self:RegisterEvent("SPELLCAST_CHANNEL_UPDATE", "SpellChannelUpdate")
	
	self:RegisterEvent("MIRROR_TIMER_START")
	self:RegisterEvent("MIRROR_TIMER_PAUSE")
	self:RegisterEvent("MIRROR_TIMER_STOP")
	
    self:RegisterEvent("PLAYER_TARGET_CHANGED", "TargetChanged")
	
	UIParent:UnregisterEvent("MIRROR_TIMER_START")
end

local function IconPath(Icon)
	return 'Interface\\Icons\\' .. Icon
end

function oCB:GetSpellIcon(spellID, spellName)
    if not spellID and not spellName then
        return IconPath("Trade_Engineering"), false
    end

    local icon, isItem = nil, false
    local name, _, spellIcon = SpellInfo(spellID)
    name = name or spellName or ""

    -- Check if opening or use of item
    if name == "Opening" or name == "Opening - No Text" then
        local tooltipText = getglobal("GameTooltipTextLeft1"):GetText() or ""
        icon = self:FindItemIcon(tooltipText) or spellIcon
        isItem = icon ~= spellIcon
    else
        icon = self:FindItemIcon(name) or spellIcon
        isItem = icon ~= spellIcon
    end
	
	if spellID == 8690 then 
		icon = IconPath('INV_Misc_Rune_01') -- Hearthstone fix
	elseif spellID == 22810 then -- Change Opening - No Text to
		spellID = 3365 -- Opening
		spell = SpellInfo(spellID)
	end
	
	if not icon then
		icon = IconPath('INV_Misc_QuestionMark')
	end

    -- Stub replacement
    if icon == IconPath("Temp")
	or icon == IconPath("Spell_Shadow_SealOfKings")
	or icon == IconPath("Ability_Ensnare")
	or icon == IconPath("Spell_Nature_DryadDispelMagic") then
        icon = oCBIcon or nil
    end
	
	if not icon then
		local Atlas = AtlasLootSearch(spellID)
		
		icon = Atlas and Atlas.Icon
	end

    return icon or IconPath("Trade_Engineering"), isItem
end

--Functions routing
function oCB:CastEvent(casterGUID, targetGUID, eventType, spellID, castDuration)
    local spell, rank = SpellInfo(spellID)
    
    self:Debug("------------------------------------------")
    self:Debug(string.format("CastEvent - SpellID: %d, Spell: %s, Rank: %s", spellID, tostring(spell), tostring(rank)))
    
    if eventType == "START" or eventType == "CHANNEL" or casterGUID == "TargetBar" then
        if eventType == "START" then
            local _, playerGUID = UnitExists("player")
            
            if casterGUID == playerGUID then
                oCBRank = rank
                oCB:CastStart(spellID, castDuration, false)
            end
        end
        
        oCB:TargetCastStart(casterGUID, targetGUID, eventType, spellID, castDuration)
    elseif eventType == "CAST" or eventType == "FAIL" or oCB:IsInstantCastsAllowed(eventType) then
        if oCB.CastMode == OCB_CAST_SUCCESS then
            if eventType == "CAST" then
                oCB.CastMode = OCB_FADEOUT
                oCB.frames.CastingBar:Show()
                oCB:TargetBarIfTargetIsPlayer("SHOW")
            elseif eventType == "FAIL" then
                oCB.CastMode = nil
            end
        end
        
        oCB:TargetCastStop(casterGUID, targetGUID, eventType, spellID)
    end
end

--sentry compatibility fix
function oCB:RegisterTargetChanged()
	self:RegisterEvent("PLAYER_TARGET_CHANGED", "TargetChanged")
end

function oCB:UnregisterTargetChanged()
	self:UnregisterEvent("PLAYER_TARGET_CHANGED")
end

function oCB:updatePositions(n)
	if self.db.profile.Pos[n] then
		local z = self:Split(self.db.profile.Pos[n], " ")
		local s = self.frames[n]:GetEffectiveScale()
		
		self.frames[n]:SetPoint("TOPLEFT", UIParent, "BOTTOMLEFT", z[1]/s, z[2]/s) 
	elseif self.frames[n] then
		self.frames[n]:ClearAllPoints()
		self.frames[n]:SetPoint("CENTER", UIParent, "CENTER", 0-UIParent:GetEffectiveScale(), 0-UIParent:GetEffectiveScale()) --trying to make pixel perfect, seems to be working so far
	end
end

function oCB:savePosition()
	local f 		= self.frames[this.name]
	local x, y 	= f:GetLeft(), f:GetTop()
	local s 		= f:GetEffectiveScale()
	
	x, y = x*s, y*s
	
	self.db.profile.Pos[this.name] = x.." "..y
end

function oCB:Split(msg, char)
	local arr = { }
	
	while string.find(msg, char) do
		local iStart, iEnd = string.find(msg, char)
		
		tinsert(arr, strsub(msg, 1, iStart-1))
		msg = strsub(msg, iEnd+1, strlen(msg))
	end
	
	if strlen(msg) > 0 then
		tinsert(arr, msg)
	end
	
	return arr
end

function ItemLinkToName(link)
	return gsub(link,"^.*%[(.*)%].*$","%1")
end

function oCB:IsSpell(spell, rank)
	if not spell or not rank then return false end
	
	local i = 0
	
	if GetLocale() == "frFR" then
		rank = string.format(string.gsub(RANK_COLON, ":", "%%d"), tonumber(rank) or 1)
	else
		rank = string.format(string.gsub(RANK_COLON, ":", " %%d"), tonumber(rank) or 1)
	end
	
	repeat
		i = i + 1
		
		local spellName, spellRank = GetSpellName(i, BOOKTYPE_SPELL)
		
		if spell == spellName and rank == spellRank then
			return true
		end
	until not spellName
	
	return false
end

function oCB:FindItemIcon(item)
	if not item or type(item) ~= "string" then return end
	
	item = string.lower(item)
	
	local link
	
	for i = 1, 23 do
		link = GetInventoryItemLink("player", i)
		
		if link and string.find(string.lower(ItemLinkToName(link)), item) then
			return GetInventoryItemTexture('player', i)
		end
	end
	
	for i = 1, 12 do
		inventoryID = KeyRingButtonIDToInvSlotID(i)
		link = GetInventoryItemLink("player", inventoryID)
		
		if link and string.find(string.lower(ItemLinkToName(link)), item) then
			return GetInventoryItemTexture('player', inventoryID)
		end
	end
	
	local count, bag, slot, texture
	
	for i = 0, NUM_BAG_FRAMES do
		for j = 1, MAX_CONTAINER_ITEMS do
			link = GetContainerItemLink(i, j)
			
			if link and string.find(string.lower(ItemLinkToName(link)), item) then
			--if link and item == string.lower(ItemLinkToName(link)) then
				bag, slot = i, j
				texture, count = GetContainerItemInfo(i, j)
			end
		end
	end
	
	return texture
end

function oCB:FormatTime(seconds)
	local timestring = ""
	
	if not tonumber(seconds) then
		return timestring
	end
	
  local d, h, m, s = ChatFrame_TimeBreakDown(seconds)
  
	if d > 0 then
		timestring =  string.format( "%02d days %02dh:%02dm:%02ds", d,h,m,s)
	elseif h > 0 then
		timestring = string.format( "%02dh:%02dm:%02ds", h,m,s)
	elseif m > 0 then
		timestring = string.format( "%02d:%02d", m,s)
	elseif s > 0 then
		if s >= 10 then
			timestring = string.format( "%d", s)
		else
			timestring = string.format( "%.1f", s)
		end
	end
	
	return timestring
end
