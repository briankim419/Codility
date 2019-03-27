require 'pry'

def three_sum(nums)
    nums.sort!
    results = []
    for i in 0...nums.length - 2
        if nums[i] == nums[i - 1] && i > 0
            next
        end
        target = -nums[i]
        left = i + 1
        right = nums.length - 1
        twoSumHelper(target, nums, left, right, results)
    end
    binding.pry
    return results
end

def twoSumHelper(target, nums, left, right, results)
    while left < right
        if nums[left] + nums[right] == target
            combination = []
            combination << nums[left]
            combination << nums[right]
            combination << -target
            results << combination
            left += 1
            right -= 1
            while left < right && nums[left] == nums[left - 1]
                left += 1
            end

            while left < right && nums[right] == nums[right + 1]
                right += 1
            end
        elsif nums[left] + nums[right] > target
            right -= 1

        elsif  nums[left] + nums[right] < target
            left += 1
        end
    end
end


a = [-1,0,1,2,-1,-4]

three_sum(a)
