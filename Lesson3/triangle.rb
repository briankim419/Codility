require 'pry'

def solution(array)
  array.sort!

  array.each_cons(3) do |triangle|
    return 1 if triangle[0] + triangle[1] > triangle[2]
  end
  0
end

a = [10,2,5,1,8,20]
solution(a)
