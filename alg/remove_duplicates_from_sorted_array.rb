require 'pry'

def solution(array)

  i = 0
  j = 0

  while j < array.length
    if array[i] != array[j]
      i += 1
      array[i] = array[j]
    end
    j += 1
  end
  binding.pry
  puts i + 1
end

a = [1,2,3,3,4]

solution(a)
