require 'pry'

def solutions(a)
  pos = a.select{|x| x > 0}

  if pos.length <= 0
    return 1
  end

  max = a.max
  b = Array(1..max)

  c = b - a

  if c.length == 0
    return max + 1
  end

  return c.min
end

def solution(a)

  b = Array.new(a.length, 0)

  a.each_with_index do | value , i |
    b[value-1] = value if value >= 1 && value <= a.length
  end

  for i in 0..a.length
    return i + 1 if b[i] == 0
  end

  return a.length + 1

end

u = [2]
solution(u)
