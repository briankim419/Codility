require 'pry'

def longest_palindrome(s)
    return s if s.length == 0
    i = j = 0
    leng = s.length
    sol = ""
    while i < leng
      while j < leng
        temp = s[i..j]
        if temp.reverse == temp && temp.length > sol.length
          sol = temp
        end
        j += 1
      end
      i += 1
      j = 0
    end

    return s[0] if sol.length == 0
    return sol
end

a = "cbbd"
longest_palindrome(a)
