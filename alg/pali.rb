require 'pry'

def valid_palindrome(s)
    return true if s == s.reverse

    for i in 0...s.length
       temp = s[0...i] + s[i + 1..-1]
       puts temp
        return true if temp.reverse == temp
    end
    return false

end

a = "abca"

valid_palindrome(a)
