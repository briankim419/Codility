require 'pry'

def length_of_longest_substring(s)
    memo = {}
    leng = 0
    start = 0

    s.split("").each_with_index do |char, idx|
       if memo.include?(char)
          leng = [leng, (idx - start)].max
          start = memo[char]
           memo = {}
           memo[char] = idx

       else
           memo[char] = idx
           leng = [leng, (idx - start + 1)].max
       end
       puts "start #{start} : leng #{leng} : idx #{idx} : memo #{memo}"
    end
    binding.pry
    leng
end

a = "abcabcbb"

length_of_longest_substring(a)
