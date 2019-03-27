require 'pry'

def min_cost_climbing_stairs(cost)
    max_cost = 0
    i = 0
    running_cost = 0
    while i < cost.length
        running_cost += cost[i]

        break if i + 1 >= cost.length
        break if i + 2 >= cost.length

        if cost[i + 1] < cost[i + 2]
            i += 1
        else
            i += 2
        end
    end
    max_cost = [max_cost, running_cost].max
    i = 1
    running_cost = 0
    while i < cost.length
        running_cost += cost[i]

        break if i + 1 >= cost.length
        break if i + 2 >= cost.length

        if cost[i + 1] < cost[i + 2]
            i += 1
        else
            i += 2
        end
    end
    max_cost = [max_cost, running_cost].min
end

cost = [1, 100, 1, 1, 1, 100, 1, 1, 100, 1]

min_cost_climbing_stairs(cost)
