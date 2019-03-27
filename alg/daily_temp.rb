require 'pry'

def daily_temperatures(t)
    wait = [0] * (t.length)
    previous_index = [0]
    t.each_with_index do |temp, idx|
        next if idx == 0
        while !previous_index.empty? && temp > t[previous_index[-1]]
            wait[previous_index[-1]] = idx - previous_index[-1]
            previous_index.pop
        end
        previous_index << idx
    end
    wait
end


t = [73, 74, 75, 71, 69, 72, 76, 73]
a = [55,38,53,81,61,93,97,32,43,78]

daily_temperatures(t)
