require 'pry'

def intersect(nums1, nums2)
    memo = {}

    nums1.each do |num|
        if memo.include?(num)
            memo[num] += 1
        else
            memo[num] = 1
        end
    end

    ans = []
    nums2.each do |num|
       if memo.include?(num) && memo[num] > 0
           ans << num
           memo[num] -= 1
       end
    end
    ans
end

intersect([1,2,2,1],
[2,2])
