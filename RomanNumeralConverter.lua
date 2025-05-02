function ArabicToRoman(num)
    if num < 1 or num > 3999 then
        return "Error: Number out of range (1-3999)"
    end
    
    local roman = ""
    local values = {1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1}
    local symbols = {"M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"}
    
    local i = 1
    while num > 0 do
        while num >= values[i] do
            roman = roman .. symbols[i]
            num = num - values[i]
        end
        i = i + 1
    end
    
    return roman
end