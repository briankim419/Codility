require 'pry'

def solution(array)

  min = nil
  max = nil
  prof = -INFINITY::

  array.each do |num|
    if min == nil || num < min
      min = num
      max = nil
      next
    end

    if max == nil || num > max
      max = num
      if max != nil && min != nil
        prof = [prof, (max - min)].max
      end
    end
  end

  puts prof
end

def get_max_profit(stock_prices)
if stock_prices.length < 2
  raise ArgumentError, 'Getting a profit requires at least 2 prices'
end

# we'll greedily update min_price and max_profit, so we initialize
# them to the first price and the first possible profit
min_price = stock_prices[0]
max_profit = stock_prices[1] - stock_prices[0]

stock_prices.each_with_index do |current_price, index|

  # skip the first time, since we already used it
  # when we initialized min_price and max_profit
  next if index.zero?

  # see what our profit would be if we bought at the
  # min price and sold at the current price
  potential_profit = current_price - min_price

  # update max_profit if we can do better
  max_profit = [max_profit, potential_profit].max

  # update min_price so it's always
  # the lowest price we've seen so far
  min_price  = [min_price, current_price].min
end

max_profit
end

a = [100, 90, 80, 75]

solution(a)
