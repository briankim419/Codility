require 'pry'

def solutions(array)

  min = array.first
  max = array.first
  prof = []
  array.each do |num|

    if num < min
      min = num
      max = 0

    end

    if num > max
      max = num
      prof << max - min

    end



  end

  prof.max

end


def max_profit(a)
  max_profit = 0
  min_price = 1 / 0.0

  a.each do |v|
    binding.pry
    min_price = [min_price, v].min
    max_profit = [max_profit, v - min_price].max
    binding.pry
  end

  max_profit
end

b =[23171, 21011, 21123, 21366, 21013, 21367]

max_profit(b)
