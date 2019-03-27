require 'pry'

def solution(a, b)
  k = a.length - 1
  i = 0
  j = 0
  ans = []

  while i < a.length

    if a[i] == b[j]
      temp = ""
      while a[i] == b[j] && j < b.length
        temp += b[j]
        i += 1
        j += 1
      end
      ans << temp
      temp = ""
    else
      j += 1
    end

    if j >= b.length
      j = 0
    end
  end
  puts ans
end

a = "abcde"
b = "edcba"

solution(a, b)
