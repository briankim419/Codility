require 'pry'

def merge(nums1, m, nums2, n)
  return nums1 if n == 0
    if m == 0
        return nums2
    end

    p = nums1.length - 1
    j = m - 1
    i = n - 1
    while p >= 0
        if nums1[j] >= nums2[i]
            nums1[p] = nums1[j]
            j -= 1
            p -= 1
            if j < 0
              while p >= 0
                nums1[p] = nums2[i]
                p -= 1
                i -= 1
              end
            end
        else nums1[j] < nums2[i]
            nums1[p] = nums2[i]
            i -= 1
            p -= 1
            if i < 0
              return nums1
            end
        end
    end
    nums1
end


nums1 = [1,2,3,0,0,0]
m = 3
nums2 = [2,5,6]
n = 3


a = [0]
b = 0
c = [1]
d = 1

merge(a, b, c, d)
