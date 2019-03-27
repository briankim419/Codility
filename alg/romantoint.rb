require 'pry'

def roman_to_int(s)
    num = 0
    hash = {
        "I" => 1,
        "IV" => 4,
        "V" => 5,
        "IX" => 9,
        "X" => 10,
        "XL" => 40,
        "L" => 50,
        "XC" => 90,
        "C" => 100,
        "CD" => 400,
        "D" => 500,
        "CM" => 900,
        "M" => 1000
        }
    i = 0
    while i < s.length
        if   s[i + 1] && hash[s[i]] < hash[s[i + 1]]
          num += hash[s[i + 1]] - hash[s[i]]
          i += 2
          next
        else s[i]
            num += hash[s[i]]
        end
        i += 1
    end
    num
end

a = "MCMXCIV"

roman_to_int(a)
