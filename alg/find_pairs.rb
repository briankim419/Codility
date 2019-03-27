require 'pry'

def find_pairs(nums, k)
    nums = nums.uniq
    memo = {}
    count = 0

    for i in 0...nums.length
        target1 = k + nums[i]
        target2 = nums[i] - k
        if !memo.include?(nums[i])
            memo[nums[i]] = true
        end

        if memo.include?(target1)
            count += 1
        end

        if memo.include?(target2)
            count += 1
        end
    end
    puts count
end


a = [1,2,3,4,5]
k = 1

b = [1,3,1,5,4]
j = 0

find_pairs(a, k)
