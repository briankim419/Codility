require 'pry'

def intersection(nums1, nums2)
    return [] if nums1.length == 0 || nums2.length == 0
    results = []

    nums1 = nums1.sort
    nums2 = nums2.sort

    leng = nums1.length
    i = 0
    j = 0
    binding.pry
    while i < leng
        if  nums2[j] == nil
            return results
        elsif nums1[i] == nums2[j]
          binding.pry
            results << nums1[i]
            while nums1[i] == nums1[i + 1]
                i += 1
            end

            while nums2[j] == nums2[j + 1]
                j += 1
            end
        end
        while nums1[i] == nums1[i + 1]
            i += 1
        end

        while nums2[j] == nums2[j + 1]
            j += 1
        end
        i += 1
        j += 1
    end

    results
end

nums1 = [1,2,2,1]
nums2 = [2,2]

intersection(nums1, nums2)
