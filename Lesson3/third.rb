def solution(s)
  v = s.to_i(2)
  count = 0
  while v != 0
    if v.even?
      v = v/2
      count += 1
    else
      v = v - 1
      count += 1
    end
  end
  return count
end
