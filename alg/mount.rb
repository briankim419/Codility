require 'pry'

def solution (array)
  i = 0
  count = 0
  last_height = array[0]

  while i < array.length
    count += 1 if i == 0
    if i == array.length - 1
      count += 1
      break
    end
    if last_height != array[i]
      while array[i] == array[i + 1]
        i += 1
      end
      if array[i] > last_height && array[i] > array[i + 1] || array[i] < last_height && array[i] < array[i + 1]
        count += 1
      end
    end
    last_height = array[i]
    i += 1
  end
  puts count
end

a = [2,2,4,4,3,3]

solution(a)
