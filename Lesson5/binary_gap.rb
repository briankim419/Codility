require 'pry'

def solution(n)
  binary = n.to_s(2)
  gap = 0
  idx = nil
  num = binary.split("")
  num.each_with_index() do |x, i|
    if x == '1' && idx == nil
      idx = i
    elsif x == '1' && idx != nil
      if (i - idx) - 1 > 0 && (i - idx) - 1 > gap
        gap = (i - idx) - 1
      end
      idx = i
    end
  end
  gap
end

solution(5)
