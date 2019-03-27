require 'pry'

def max_area(height)
    i = 0
    j = height.length - 1
    max = 0
    while (j > i)
        tmp_max = [height[i], height[j]].min * (j - i)
        if tmp_max > max
            max = tmp_max
        end

        if height[i] > height[j]
            j -= 1
        else
            i += 1
        end
    end

    return max
end
