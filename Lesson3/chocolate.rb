require 'pry'

def solution(n, m)

  numbers = Array(0..(n - 1))

  choc = []
  x = 0

  while numbers.include?(x)
    choc << x
    numbers.delete(x)
    x = (x + m) % n
  end
    choc.length

end


a = 10
b = 4

solution a, b
