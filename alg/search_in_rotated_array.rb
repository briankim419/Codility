require 'pry'

def search(nums, target)
    index = 0
    min = Float::INFINITY
    for i in 0...nums.length
        if min > nums[i]
          min = nums[i]
            index = i
        end
    end


    if nums[0] < target
        i = 0
        j = index
    else
        i = index
        j = nums.length - 1
    end

    mid = (i + j) / 2
    while i < j
       if nums[mid] > target
           j = mid - 1
           if nums[j] == target
             return j
           else
             return -1
           end
       elsif nums[mid] < target
           i = mid + 1
           if nums[j] == target
             return j
           else
             return -1
           end
       else
           return mid
       end

        mid = (i + j)/ 2
    end
    return -1
end

nums = [4,5,6,7,0,1,2]
target = 0

search(nums, target)
