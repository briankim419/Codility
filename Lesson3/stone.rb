require 'pry'

def solutions(a)
    stack = []
    stones = 0


    a.each do |height|
      if stack.any? and stack.last > height
        stack.pop
      end

      if stack.any? and stack.last == height
        next
      end

      stones += 1
      stack << height

    end


    return stones
end

def solution(h)
    # write your code in Ruby 2.2
    stack = []
    stones = 0
    h.each do |val|
        if stack.length>0 && val < stack.last
            stack.pop
        end
        if stack.length == 0 || val > stack.last
            stack.push(val)
            stones += 1
        end
    end
    stones
end



a = [5,7,9,8,4]
solution(a)
