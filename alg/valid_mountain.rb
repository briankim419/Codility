require 'pry'

def valid_mountain_array(a)

    i = 0

    while i < a.length
      if a[i + 1]
        break if a[i + 1] < a[i]
      end
      i += 1
    end

    return false if i == 0 || i > a.length - 1
    while i < a.length
      if a[i + 1]
        puts false if a[i] <= a[i + 1]
      end
      i += 1
    end

    return true

end

a = [0,1,2,1,2]

valid_mountain_array(a)
