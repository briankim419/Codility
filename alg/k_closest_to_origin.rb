require 'pry'

def k_closest(points, k)
    freq = {}

    points.each_with_index do |point, idx|
        freq[idx] = Math.sqrt(point[0]**2 + point[1]**2)
    end

    solution = []
    k.times do
       i = freq.key(freq.values.min)
       freq.delete(i)
       solution << points[i]
    end
    solution
end

points = [[3,3],[5,-1],[-2,4]]
 k = 2

k_closest(points, k)
