require 'pry'

def solutions(a)

  temp = []
  a.each do |x|
    if temp.length == 0 || !temp.include?(x)
      temp << x
    elsif
      temp = temp - [x]
    end

  end

  return temp[0]
end




def solution(a)
  sol = nil
  a.each do |x|
    num = a.index(x) + 1
    if a[num] != nil
      if sol == nil

        sol = x + a[num]
      elsif sol < x + a[num]

        sol = x + a[num]
      end
    end
  end
  return sol
end

b = [3, 2, -6, 4, 0]

solution(b)







def max_slice_sum(a)

  # sum we're currently adding to
  running_sum = 0
  max_so_far = 0

  a.each do |el|
    binding.pry
    max_current = (el + running_sum) > el ? (el + running_sum) : el
    binding.pry
    running_sum = max_current > 0 ? max_current : 0
    binding.pry
    max_so_far = max_so_far > running_sum ? max_so_far : running_sum
  end

  binding.pry
  max_so_far == 0 ? a.max : max_so_far
end

max_slice_sum(b)
