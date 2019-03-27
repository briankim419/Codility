require 'pry'

def three_sum(nums)

  nums = nums.sort
  ans = []
  for i in 0...nums.length - 1
    if i != 0 && nums[i - 1] == nums[i]
      next
    end

    target = -nums[i]
    two(nums, target, ans, start = i + 1, last = nums.length - 1)
  end
  ans
end

def two(nums, target, ans, start, last)


  while start < last
    if nums[start] + nums[last] == target
      combination = [-target, nums[start], nums[last]]
      ans << combination
      last -= 1
      start += 1

      while nums[last] == nums[last + 1]
        last -= 1
      end

      while nums[start] == nums[start - 1]
        start += 1
      end

    elsif nums[start] + nums[last] > target
      last -= 1


    else nums[start] + nums[last] < target
      start += 1
    end

  end
end

nums = [-1, 0, 1, 2, -1, -4]
three(nums)
