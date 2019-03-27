require 'pry'

def coin_change(coins, amount)
     coins_per_amount = [Float::INFINITY] * (amount + 1)
     coins_per_amount[0] = 0

    coins_per_amount.each_with_index do |ca, idx|
        min = 0
        coins.each do |value|
            if value <= idx
              coins_per_amount[idx] = [coins_per_amount[idx], coins_per_amount[idx - value] + 1 ].min

            end
        end
    end
    return -1 if coins_per_amount[amount] == Float::INFINITY
    return coins_per_amount[amount]

end

a = [1,2,5]
b = [186,419,83,408]
k = 6249

coin_change(a,11)
