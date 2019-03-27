require 'pry'

def trap(height)
  water = 0
  stack = [] # used to store the index of height
  i = 0

  while i < height.length
    if stack.empty? or height[i] <= height[ stack.last ]
      stack << i
      i += 1
    else
      binding.pry
      valley = height[ stack.pop ]

      next if stack.empty?

      left_idx, right_idx = stack.last, i
      peak = height.values_at(left_idx, right_idx).min

      water += (peak - valley) * (right_idx - left_idx - 1)
    end
  end

  water
end


a = [0,1,0,2,1,0,1,3,2,1,2,1]
trap(a)
