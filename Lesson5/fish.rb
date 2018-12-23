require 'pry'

def solution(a, b)

  count = 0
  downstream = []

  a.each_with_index do |x, i|
    if b[i] == 1
      downstream << a[i]
      next
    end

    if downstream[-1] != nil && b[i] == 0
      while downstream[-1] != nil && x > downstream[-1] do
        downstream.pop()
      end

      if downstream[-1] != nil && x < downstream[-1]
        next
      end
    end

    count += 1
  end
  count += downstream.length
end

solution([4, 3, 2, 1, 5], [0, 1, 0, 0, 0])
