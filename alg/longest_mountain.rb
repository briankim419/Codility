require 'pry'

def longest_mountain(a)
  n = a.length
  return 0 if n < 3

    longest_length = 0
    mode = "waiting"
    base_index = 0

  a.each_with_index do |num, idx|
    next if idx == 0

    if a[idx - 1] == a[idx]
      mode = "waiting"
      next
    end

    if a[idx - 1] < a[idx] && mode == "waiting"
      mode = 'increasing'
      base_index = idx - 1
      next
    end

  if  mode == "increasing"
      if a[idx - 1] < a[idx] && mode
          next
      elsif a[idx - 1] > a[idx] && idx == a.length - 1
          longest_length = [longest_length, (idx - base_index + 1)].max
          next
      else a[idx - 1] > a[idx]
          mode = "decreasing"
          longest_length = [longest_length, (idx - base_index + 1)].max
          next
      end
  end

    if mode == "decreasing"
      if a[idx - 1] > a[idx] && idx == a.length - 1
        longest_length = [longest_length, (idx  - base_index + 1)].max
      elsif a[idx - 1] <= a[idx]
        longest_length = [longest_length, (idx  - base_index)].max
        mode = "increasing"
        base_index = idx - 1
      else a[idx - 1] > a[idx]
        next
      end
  end
end
  puts longest_length
end


a = [2,1,4,7,3,2,5]
b = [0,1,2,3,4,5,4,3,2,1,0]
c = [0,1,0]
d = [875,884,239,731,723,685]
e = [0,0,1,0,0,1,1,1,1,1]

longest_mountain(e)
