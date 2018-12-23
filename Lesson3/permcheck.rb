def solution(a)
  max = a.length
  perm = Array(1..max)

  if (perm - a).length == 0
    return 1
  else
    return 0
  end
end
