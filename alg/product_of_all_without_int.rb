require 'pry'

def solution(array)

  if array.length < 2
  raise IndexError, 'Getting the product of numbers at other indices requires at least 2 numbers'
  end



i = 0
product_so_far = 1
x = []

  while i < array.length
    x[i] = product_so_far
    product_so_far *= array[i]
    i += 1
  end

  product_so_far = 1
  i = array.length - 1
  while i > 0
    x[i] *= product_so_far
    product_so_far *= array[i]
    i -= 1
  end
puts x

end


a = [2]

solution(a)
