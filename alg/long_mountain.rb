require 'pry'

def longest_mountain(a)
  leng = a.length
  return 0 if leng < 2
  ans = 0
  start = -1
  mode = 'waiting'

  for i in 1...leng
    if a[i] == a[i - 1]
      mode = 'waiting'
      next
    end

    if a[i] > a[i - 1] && mode != "increasing"
      start = i - 1
      mode = "increasing"
      next
    end

    if a[i] < a[i - 1] && mode != "waiting"
      mode = "decreasing"
      ans = [ans, i - start + 1].max
      next
    end
  end


  puts ans
end

a = [2,1,4,7,3,2,5]
b = [2,2,2]
c = [1,2,0,2,0,2]

longest_mountain(c)
