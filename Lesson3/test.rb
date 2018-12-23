require 'pry'

def solution(x, y, d)
  distance = y - x

  i = distance/d
  f = distance/d.to_f

  if distance == 0
    return 0
    puts 0
  elsif i == f
    return i
    puts i
  else
    return i + 1
    puts i + 1
  end
end

solution(10, 85, 30)
