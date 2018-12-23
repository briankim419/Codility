require 'pry'

def solution(array)

  block = []
  count = 0
  level = 0

  array.each do |num|

    if block.length == 0
      block << num
      level = num
      count += 1
      next
    end

    if !block.include?(num)
      if num < level
        level = num
        count += 1
      end
      block << num
      count += 1
    end

end

a = [8, 8, 5, 7, 9, 8, 7, 4, 8]
solution(a)
