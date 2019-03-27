require 'pry'

def increasing_triplet(nums)
    small = Float::INFINITY
    mid = Float::INFINITY

    nums.each do |num|
       if num <= small
           small = num
       elsif num <= mid
           mid = num
       else
           return true
       end
    end
    return false
end

a = [1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,-1,-1,-1,3]

increasing_triplet(a)
