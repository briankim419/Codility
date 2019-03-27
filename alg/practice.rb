require 'pry'

def solution(array)

  last = 0
  count = 0

  for i in 0...array.length
    if array[i] > last
      count += (array[i] - last)
    end

    last = array[i]
  end
  puts count
end

a = [1,3,2,1,2,1,5,3,3,4,2]
b = [3,3,5,5]

solution(b)
