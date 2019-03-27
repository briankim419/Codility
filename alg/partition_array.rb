require 'pry'

def partition_disjoint(a)
    disjoint = 0
    value = a[disjoint]
    max_so_far = value

    for i in 0..(a.length - 1)
        max_so_far = [max_so_far, a[i]].max
        if a[i] < value
            disjoint = i
            value = max_so_far
        end
    end
    return disjoint + 1
end



a = [5,0,3,8,6]
b = [1,1,1,0,6,12]
partition_disjoint(b)
