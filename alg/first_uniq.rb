require 'pry'

def first_uniq_char(s)
    memo = {}
    s.split("").each_with_index do |char, idx|
       if !memo.include?(char)
           memo[char] = [idx]
       else
           memo[char] << idx
       end
    end

    ans = memo.select{ |k, v| v.length == 1 }
    binding.pry
    return -1 if ans == nil || ans.empty?
    return ans.values.min.join.to_i
end

s = ""

first_uniq_char(s)
