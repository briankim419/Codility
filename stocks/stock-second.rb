require 'pry'

def solution(array)

maxprofit = 0

array.each_with_index do |price, idx|
  next if idx == 0

  if array[idx] > array[idx - 1]
    maxprofit += array[idx] - array[idx - 1]
  end

end

puts maxprofit
end


a = [7,1,5,3,6,4]
b = [7,6,4,3,1]
c = [1,2,3,4,5]
d = [0,1,3,200]
solution(c)
