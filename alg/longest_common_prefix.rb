require 'pry'

def longest_common_prefix(strs)
    return "" if strs.length < 1
    base = strs[0].split("")
    strs[1..-1].each do |word|
        length = base.length
        temp = word.split("")
        i = 0
        while i < length
            if base[i] == temp[i]
                base[i] = base[i]
            elsif base[i] != temp[i] && i == 0
              return ""
            elsif
                base = base[0..(i - 1)]
                break
            end
            i += 1
        end
    end
    base.join
end

a = ["dog","racecar","car"]

longest_common_prefix(a)
