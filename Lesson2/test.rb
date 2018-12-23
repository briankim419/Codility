require 'pry'

def solution(a)
  unique_numbers = a.uniq
  unique_numbers.each do |element|
    if a.count(element).odd?
      return element
    end
  end
end

b = [9, 3, 9, 3, 9, 7, 9]
solution(b)
puts "hll"
