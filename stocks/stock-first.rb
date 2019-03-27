require 'pry'

def solution(array)

max = 0
high = nil
min = nil
  array.each do |num|
    if high == nil || num > high
      high = num
    end

    if min == nil || num < min
      min = num
      high = nil
    end

    if high != nil && min != nil
      max = [max, high - min].max
    end
  end

  if max == 0
    return 0
  else
    return max
  end

end

a = [7,1,5,3,6,4]
b = [7,6,4,3,1]
c = [1,2,3,4,5]
solution(a)

## get the max difference
## biggest difference
