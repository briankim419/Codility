require 'pry'

def solution(string)
  count = 0
  number = string.to_i(2)
  while number > 0
    if number.odd?
      number -= 1
      count += 1
    else
      number = number / 2
      count += 1
    end
  end

  return count

end

a = "011100"
solution(a)
