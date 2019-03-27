require 'pry'

def merge(nums1, m, nums2, n)

    copy = nums1[0...m]
    leng = nums1.length
    a = i = j = 0
    while a < leng
        if i >= m
            nums1[a] = nums2[j]
            j += 1
        elsif j >= n
            nums1[a] = copy[i]
            i += 1
        end

        if i < m  && j < n && copy[i] <= nums2[j]
            nums1[a] = copy[i]
            i += 1
        elsif i < m && j < n && nums2[j] < copy[i]
            nums1[a] = nums2[j]
            j += 1
        end
        a += 1
    end
nums1
end

nums1 = [1,2,3,0,0,0]
m = 3
nums2 = [2,5,6]
n = 3

merge(nums1, m, nums2, n)
