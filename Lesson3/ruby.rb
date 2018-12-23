require 'pry'

def solutions(a)
  length = a.length

  last_index = length - 1

  point = 0


   diff = []

   while point < last_index
     seta = a.values_at(0..point).reduce(:+)
     setb = a.values_at(point+1..last_index).reduce(:+)

     diff << (seta - setb).abs
     point += 1

   end

  diff.min

end



def solution(a)
   x = a[0]
   y = a[1..-1].reduce(0, :+)
   m = (x - y).abs

   a[1..-2].each do |el|
     x += el
     y -= el
     m = [m, (x - y).abs].min
   end
   m
 end


 b = [3, 1, 2, 4, 3]
 solution(b)
