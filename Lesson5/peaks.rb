require 'pry'

def solution(array)

  peaks = []

  array.each_with_index do |num, idx|
    if idx == 0 || idx == (array.length - 1)
      next
    end

    if array[idx - 1] < num && array[idx + 1] < num
      peaks << idx
    end
  end

  flags = peaks.length
  max = 0

  while flags >= 1 do
    peaks.each_with_index do |p, i|
      binding.pry
      if i == peaks.length - 1
        next
      end
      temp = []

      if (p - peaks[i +]).abs >= flags
        temp << p
        binding.pry
      end

      max = temp.length if temp.length > max
      binding.pry
    end

    flags -= 1
  end
  max

end

a = [1, 5, 3, 4, 3, 4, 1, 2, 3, 4, 6, 2]

solution(a)
