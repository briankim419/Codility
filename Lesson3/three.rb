def solution(array)
  abs = []

  array.each do |a|
    abs << a.abs
  end
  max = abs.max

  idx = array.index
  second = array[idx..array.length -1]

  if idx == array.length - 1
    second = array[0..idx-1]
  end

  







end
