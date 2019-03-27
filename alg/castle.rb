require 'pry'

def solution(array)

last_height = 0
count = 0
  for i in 0...array.length
    if i == array.length - 1
      count += 1
    end

    if array[last_height] == array[i]
      next
    end

    if last_height == 0 && array[last_height] > array[i] ||  last_height == 0 && array[last_height] < array[i]
      count += 1
    elsif array[last_height - 1] < array[last_height] && array[last_height] > array[i]
      count += 1
    elsif array[last_height - 1] > array[last_height] && array[last_height] < array[i]
      count += 1
    end
    last_height = i

  end

puts count
end

 a = [2,2,4,4,3,3]

solution(a)
