require 'pry'

def solution(array)
  memo = {}
  current = 0
  count = 0

  array.each do |height|
    temp = height
    if height >= current
      while height > 0
        if !memo.include?(height) || memo[height] == false
        memo[height] = true
        count += 1
        end
        height -= 1
      end

    else height < current
      while height < current
        height += 1
        memo[height] = false
        height += 1
      end
    end
    current = temp
  end
  puts count
end


a = [1,5]

solution(a)
