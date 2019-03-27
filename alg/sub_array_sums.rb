require 'pry'

def subarray_sum(nums, k)

    stack = []
    stack_sum = 0
    count = 0
    nums.each do |num|
        if stack_sum < k
            stack << num
            stack_sum += num
            if stack_sum == k
                count += 1
            end
        else
          if stack_sum + num == k
            stack << num
            count += 1
            stack_sum += num
            next
          else
            if stack.empty?
              stack << num
              stack_sum += num
              if stack_sum == k
                count += 1
              end
            else
              temp = stack.shift
              stack_sum -= temp
              stack_sum += num
              stack << num
              if stack_sum == k
                  count += 1
              end
            end
          end
        end
    end
    while !stack.empty? && stack.length > 1
        temp = stack.shift
        stack_sum -= temp
        if stack_sum == k
            count += 1
        end
    end
    count
end

a = [1]

subarray_sum(a, 0)
