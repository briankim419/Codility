require 'pry'

def three_sum_multi(a, target)
    a.sort!
    combination = []
    count = 0
    freq = [0] * (a.max + 1)
    for i in 0...a.length
      freq[a[i]] += 1
    end
    i = 0
    while i < a.length - 2
      puts "Original i: #{i}"
      while i > 0 && a[i] == a[i - 1]
        i += 1
        puts "Updated i: #{i}}"
      end
      puts i
        third = i
        left = i + 1
        right = a.length - 1

        count += sum_helper(a, target - a[i], left, right, third, freq)
        puts count
        i += 1
    end
    count
end

def sum_helper(a, target, left, right, third, freq)
    count = 0
    while left < right
      puts "#{a[third]}(#{third}), #{a[left]}(#{left}), #{a[right]}(#{right}), #{target}"
       if a[left] + a[right] == target
         if a[third] == a[left] && a[left] != a[right]
           count += freq[a[third]] * (freq[a[left]] - 1) / 2 * freq[a[right]]
         elsif a[third] != a[left] && a[left] == a[right]
           count += freq[a[third]] * freq[a[left]] * (freq[a[right]] - 1) / 2
         elsif a[third] == a[left] && a[left] == a[right]
           count += freq[a[third]] * (freq[a[left]] - 1) * (freq[a[right]] - 2) / 6
         elsif a[third] != a[left] && a[left] != a[right]
           count += freq[a[third]] * freq[a[left]] * freq[a[right]]
         end
           left += 1
           right -= 1
           while left < right && a[left] == a[left - 1]
               left += 1
           end

           while left < right && a[right] == a[right + 1]
               right -= 1
           end
       elsif a[left] + a[right] > target
           right -= 1
       elsif
        left += 1
       end
    end
    count
end

a = [1,1,2,2,3,3,4,4,5,5]
b = 8

three_sum_multi(a,b)
