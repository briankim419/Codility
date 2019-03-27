require 'pry'

def max_dist_to_closest(seats)

    left = [0] * seats.length
    right = [0] * seats.length

    i = 0

    taken_index = nil
    while i < seats.length
        if seats[i] == 1
            taken_index = i
            left[i] = 0
        elsif taken_index == nil && seats[i] == 0
            left[i] = seats.length
        else
            left[i] = i - taken_index
        end
        i += 1
    end

    taken_index = nil

    i = seats.length - 1
    while i >= 0
      if seats[i] == 1
          taken_index = i
          right[i] = 0
      elsif taken_index == nil && seats[i] == 0
          right[i] = seats.length
      else
          right[i] = taken_index - i
      end
      i -= 1
    end

    max = 0
    for j in 0...seats.length
      a = [left[j], right[j]].min
      max = [max, a].max
    end
    max
end

a = [1,0,0,0]

max_dist_to_closest(a)
