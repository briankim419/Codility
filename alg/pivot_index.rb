require 'pry'

def pivot_index(nums)
    right_sums = []
    left_sums = []

    sum = 0
    nums.each do |num|
        left_sums << sum
        sum += num
    end

    i = 0
    while i < nums.length
        sum -= nums[i]
       right_sums << sum
        i += 1
    end

    i = 0
    while i < nums.length
        if left_sums[i] == right_sums[i]
            return i
        end
        i += 1
    end

    return -1

end

a = [1,7,3,6,5,6]
pivot_index(a)
