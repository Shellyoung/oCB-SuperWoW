--[[
Symbol   Value
I        1
V        5
X        10
L        50
C        100
D        500
M        1000

If a lesser number comes before a greater number (e.g. IX), then
the lesser number is subtracted from the greater number (IX -> 9, 900 -> CM)
So, 
Symbol   Value
IV       4
IX       9
XL       40
XC       90
CD       400
CM       900
LM       950

VX is actually valid as 5, along with other irregularities, such as IIIIIV for 8

Copyright (C) 2012 LoDC

Source: https://gist.github.com/efrederickson/4080372
]]

local map = { 
    I = 1,
    V = 5,
    X = 10,
    L = 50,
    C = 100, 
    D = 500, 
    M = 1000,
}
local numbers = { 1, 5, 10, 50, 100, 500, 1000 }
local chars = { "I", "V", "X", "L", "C", "D", "M" }

--local RomanNumerals = {}

function RomanToArabic(s)
    --s = tostring(s)
    s = tonumber(s)
	
    if not s or s ~= s then error"Unable to convert to number" end
	
    if s == math.huge then error"Unable to convert infinity" end
	
    s = math.floor(s)
	
    if s <= 0 then return s end
	
	local ret = ""
	
	for i = numbers, 1, -1 do
		local num = numbers[i]
		
		while s - num >= 0 and s > 0 do
			ret = ret .. chars[i]
			s = s - num
		end
		
			--for j = i - 1, 1, -1 do
		for j = 1, i - 1 do
			local n2 = numbers[j]
				
			if s - (num - n2) >= 0 and s < num and s > 0 and num - n2 ~= n2 then
				ret = ret .. chars[j] .. chars[i]
				s = s - (num - n2)
				
				break
			end
		end
    end
	
    return ret
end

function ArabicToRoman(s)
    s = s:upper()
	
    local ret = 0
    local i = 1
	
    while i <= s:len() do
    --for i = 1, s:len() do
        local c = s:sub(i, i)
		
        if c ~= " " then -- allow spaces
            local m = map[c] or error("Unknown Roman Numeral '" .. c .. "'")
            
            local next = s:sub(i + 1, i + 1)
            local nextm = map[next]
            
            if next and nextm then
                if nextm > m then 
                -- if string[i] < string[i + 1] then result += string[i + 1] - string[i]
                -- This is used instead of programming in IV = 4, IX = 9, etc, because it is
                -- more flexible and possibly more efficient
                    ret = ret + (nextm - m)
                    i = i + 1
                else
                    ret = ret + m
                end
            else
                ret = ret + m
            end
        end
		
        i = i + 1
    end
	
    return ret
end

-- print("9876", RomanNumerals.ToRomanNumerals(9876))
-- print("944", RomanNumerals.ToRomanNumerals(944))
-- print("1", RomanNumerals.ToRomanNumerals(1))
-- print("4", RomanNumerals.ToRomanNumerals(4))
-- print("5", RomanNumerals.ToRomanNumerals(5))
-- print("6", RomanNumerals.ToRomanNumerals(6))
-- print("9", RomanNumerals.ToRomanNumerals(9))
-- print("501", RomanNumerals.ToRomanNumerals(501))
-- print("1024", RomanNumerals.ToRomanNumerals(1024))
-- print("369", RomanNumerals.ToRomanNumerals(369))
-- if IWantToDieHorribly then
-- print(3999999, RomanNumerals.ToRomanNumerals(3999999)) -- these two nuke the horizontal scroll bar...
-- print(4000000, RomanNumerals.ToRomanNumerals(4000000))
-- print(math.huge, RomanNumerals.ToRomanNumerals(math.huge)) -- fails, which is good.
-- end
-- print(0, RomanNumerals.ToRomanNumerals(0))
-- print(2012, RomanNumerals.ToRomanNumerals(2012))
-- print(99, RomanNumerals.ToRomanNumerals(99))
-- print(999, RomanNumerals.ToRomanNumerals(999))
-- print(1001, RomanNumerals.ToRomanNumerals(1001))

-- print("1 == I", assert(1 == RomanNumerals.ToNumber("I")))
-- print("4 == IV", assert(4 == RomanNumerals.ToNumber("IV")))
-- print("5 == V", assert(5 == RomanNumerals.ToNumber("V")))
-- print("6 == VI", assert(6 == RomanNumerals.ToNumber("VI")))
-- print("9 == IX", assert(9 == RomanNumerals.ToNumber("IX")))
-- print("501 == DI", assert(501 == RomanNumerals.ToNumber("DI")))
-- print("1024 == MXXIV", assert(1024 == RomanNumerals.ToNumber("MXXIV")))
-- print("9876 == MMMMMMMMMDCCCLXXVI", assert(9876 == RomanNumerals.ToNumber("MMMMMMMMMDCCCLXXVI")))
-- print("944 == CMXLIV", assert(944 == RomanNumerals.ToNumber("CMXLIV")))
-- print("500 == DM", assert(500 == RomanNumerals.ToNumber("DM")))
-- print("600 == DMC", assert(600 == RomanNumerals.ToNumber("DMC")))
-- print("8 == IIIIIV", assert(8 == RomanNumerals.ToNumber("IIIIIV")))
-- print("2012 == MMXII", assert(2012 == RomanNumerals.ToNumber("MMXII")))
-- print("VX == 5", assert(5 == RomanNumerals.ToNumber("VX")))
-- print("99 == IC", assert(99 == RomanNumerals.ToNumber("IC")))
-- print("999 == IM", assert(999 == RomanNumerals.ToNumber("IM")))
-- print("1001 == MI", assert(1001 == RomanNumerals.ToNumber("MI")))
