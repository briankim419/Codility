

def solution(s)
  a = s.split("")

  binding.pry

  return 0 if a.length == 1

  return -1 if a.length.even? || a.length == 0

  mid = (a.length / 2)

  last = a.length - 1

  for i in 0...mid do
    return -1 if a[i] != a[last]
    last -= 1
  end

  return mid
end

solution("x")
