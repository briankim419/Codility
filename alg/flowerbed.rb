require 'pry'

def can_place_flowers(flowerbed, n)
    count = 0

    for i in 0...flowerbed.length
       if i == 0 && flowerbed[i + 1] == 0 && flowerbed[i] == 0
           count += 1
           flowerbed[i] = 1
           next
       end

        if i == flowerbed.length - 1 && flowerbed[i - 1] == 0 && flowerbed[i] == 0
            count += 1
            next
        end

        if flowerbed[i - 1] == 0 && flowerbed[i + 1] == 0 && flowerbed[i] == 0
            flowerbed[i] = 1
            count += 1
            next
        end
    end
    return true if count >= n
    return false

end

can_place_flowers([1,0,0,0,1], 2)
