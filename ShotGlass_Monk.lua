local TrackedAuras = ShotGlassRaidFrames.TrackedAuras

if UnitClassBase("player") == "Monk" then
	
	-- spelling mistake in the following function name is in the base mod source
	local TextFunction = ShotGlassRaidFrames.TextCoutdownFunction	-- Displays a countdown when the remaining duration is less than 6 seconds
	
	------------------------
	-- Monk healing auras
	-- Enveloping Mist: 132120
	-- Life Cocoon: 116849
	-- Renewing Mist: 119611
	-- Soothing Mist: 125953
	-- Touch of Karma: 124280, not on friendlies
	------------------------

	-- Left
	TrackedAuras[GetSpellInfo(125953)] = {position = 3, priority = 2, color = {r = .2,g = 1, b = .4, a = 1}, }				-- Regrowth
	TrackedAuras[GetSpellInfo(116849)] = {position = 3, priority = 1,  color = {r = .2,g = 1, b = 1, a = 1}, }				-- Wild Growth
	
	-- Middle
	TrackedAuras[GetSpellInfo(119611)] = {position = 2, color = {r = .6,g = 1, b = .1, a = 1}, textFunction = TextFunction,}	-- Lifebloom
	
	-- Right
	TrackedAuras[GetSpellInfo(132120)] = {position = 1, color = {r = .8,g = 0, b = .8, a = 1},}								-- Rejuvenation
					
	------------------------
	-- Curable Debuff Types
	------------------------
	TrackedAuras["Poison"] = {position = 5, color = {r = 0,g = .9, b = .1, a = 1},}
	TrackedAuras["Disease"] = {position = 4, color = {r = .9,g = 0, b = .7, a = 1},}
	TrackedAuras["Magic"] = {position = 4, color = {r = 0,g = .3, b = .9, a = 1},}
end


-- T9 raid debuffs
TrackedAuras["Penetrating Cold"] = {position = 5, color = {r = .8,g = .3, b = 0, a = 1},}

-- T10 raid debuffs
TrackedAuras["Mutated Infection "] = {position = 4, color = {r = 1,g = 0, b = 0, a = 1},}
TrackedAuras["Ice Tomb"] = {position = 4, color = {r = .4,g = .4, b = 1, a = 1},}
TrackedAuras["Frost Beacon"] = {position = 4, color = {r = 1,g = 1, b = 1, a = 1},}
TrackedAuras["Unchained Magic"] = {position = 5, color = {r = .5,g = 0, b = 1, a = 1},}
TrackedAuras["Mystic Buffet"] = {position = 6, color = {r = .5,g = 0, b = .5, a = 1},}
TrackedAuras["Essence of the Blood Queen"] = {position = 5, color = {r = 1,g = 0, b = 0, a = 1},}
TrackedAuras["Frenzied Bloodthirst"] = {position = 5, color = {r = .8,g = .3, b = 0, a = 1},}
TrackedAuras["Plague Sickness"] = {position = 5, color = {r = .8,g = .3, b = 0, a = 1},}
TrackedAuras["Harvest Soul"] = {position = 5, color = {r = .8,g = .3, b = 0, a = 1},}

-- T11 raid debuffs
TrackedAuras["Break"] = {position = 5, color = {r = .9,g = .2, b = 0, a = 1},}

-- those silly mages
TrackedAuras["Cauterize"] = {position = 5, color = {r = 0,g = 1, b = 1, a = 1},}
