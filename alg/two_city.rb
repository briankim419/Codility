require 'pry'

def solution(a)

left_max = 0
right_max = 0

a.each_with_index do |num, idx|
  left_max = [left_max, num - idx].max
  right_max =[right_max, num + idx].max
end
puts left_max + right_max
end

a = [-8, 4, 0, 5, -3, 6]
b = [1,3,-3]

solution(b)
