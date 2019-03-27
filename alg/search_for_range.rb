require 'pry'

def search_range(nums, target)
    low = 0
    high = nums.length - 1

    while low <= high
       guess = (high + low)/2

        if nums[guess] == target
            i = j = guess
            while nums[i] == target && i >= 0
                i -= 1
            end

            while nums[j] == target && j <= nums.length - 1
                j += 1
            end
            return [i + 1, j - 1]

        elsif nums[guess] > target
            high = guess - 1
        elsif
            low = guess + 1
        end
    end
    return [-1, -1]

end

a = [1]

search_range(a, 1)
