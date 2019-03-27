require 'pry'

def three_sum(nums)
    nums = nums.sort
    solution = []
    nums[0...-2].each_with_index do |num, idx|
        if idx > 0 && nums[idx - 1] == nums[idx]
            next
        end
        seek = -num
        two_sum(nums, seek, idx + 1 , nums.length - 1, solution)
    end
    solution
end

def two_sum(nums, target, start, last, solution)
   while(start < last)
      if nums[start] + nums[last] == target
          combination = []
          combination << -target
          combination << nums[start]
          combination << nums[last]
          solution << combination
          start += 1
          last -= 1
          while start < last && nums[start] == nums[start - 1]
              start += 1
          end

          while start < last && nums[last] == nums[last + 1]
              last -= 1
          end
      elsif nums[start] + nums[last] > target
           last -= 1
       elsif nums[start] + nums[last] < target
           start += 1
       end
   end
end

a =
[-1,0,1,2,-1,-4]

three_sum(a)
