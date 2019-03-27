require 'pry'

def consecutive_numbers_sum(n)
    count = 0
    for i in 1..n
        sum = i
        plus = i
        while sum <= n
            if sum == n
                count += 1
            end
            plus = sum + 1
            sum = sum + plus
        end
    end
    count

end

consecutive_numbers_sum(9)
