require 'pry'

def solution(a)
  numbers = Array(1..(a.size + 1))
  res = numbers - a
  res[0]
end

b = [1, 2 ,3, 5]
solution(b)
