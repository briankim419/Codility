require 'pry'

def length_of_lis(nums)
    return 0 if nums.length == 0
    dp = [1] * nums.length
    max_ans = 1
    leng = nums.length

    for i in 1...leng
        for j in 0...i
           if nums[i] > nums[j]
              dp[i] = [dp[j] + 1, dp[i]].max
               max_ans = [max_ans, dp[i]].max
           end
        end
    end
    return max_ans
 end

 length_of_lis([10,9,2,5,3,7,101,18])
