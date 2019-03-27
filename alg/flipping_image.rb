require 'pry'

def flip_and_invert_image(a)
    a.each do |el|
       el.reverse!
    end

    a.each do |array|
       array.each_with_index do |num, idx|
           if num == 0
             array[idx] = 1
               num = 1
           else
               array[idx] = 0
           end
       end
    end
    a
end

s = [[1,1,0],[1,0,1],[0,0,0]]

flip_and_invert_image(s)
