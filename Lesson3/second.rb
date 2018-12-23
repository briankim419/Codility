require 'pry'

def solution(array)

  level = {}
  temp = []

  count = 0
  array.each do |num|
    i = num
    max = level.keys.max
    if level.length == 0
      while i > 0
        level[i] = true
        i -= 1
      end
      count += num
      next
    end

    if !level.include?(num)

        while i > max
          level[i] = true
          i -= 1
        end
      count += num - max
      next
    else
      while i < max
        if level[i] == true
          level[i] = false
        else
          level[i] = true
          count += 1
        end
        i += 1
      end
    end
  end

  return count

end


b = [1,5,2]

solution(b)
