require 'pry'

def solutions(a)

  count = 0
  last = (a.length) -1
  n = a
  a.each do |x|
    if x == 0
      n = n[0..last]
      count += n.count(1)
      n.shift
    end
    n.shift
  end
  count
end

def solution(a)

  west = 0
  east = 0

  a.each do |car|
      east += 1    if car==0
      west += east if car==1

  end

  return -1 if west > 1000000000
  west

end

s =   [0, 1, 0, 1, 1]


solution(s)

array.each_with_index do |element,index|
  element.do_stuff(index)
end
