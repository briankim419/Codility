require 'pry'

def length_of_longest_substring(s)
    memo = {}
    start = 0
    length = 0

    for i in 0...s.length
       if memo.include?(s[i])
         if memo[s[i]] + 1 >= start
           start = (memo[s[i]] + 1)
         end
           memo[s[i]] = i
       else
           memo[s[i]] = i
       end
             puts "start: #{start} i: #{i}"
        length = [length, (i - start + 1)].max
    end
    length
end

length_of_longest_substring("abba")
