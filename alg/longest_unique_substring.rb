require 'pry'

def length_of_longest_substring(s)
  max = 0
  storage = {}
  start = 0
  s.split("").each_with_index do |char, idx|

    if storage.include?(char) && storage[char] >= start
      start = storage[char] + 1
      storage[char] = idx
    else
      storage[char] = idx
    end
    max = [max, idx - start + 1].max
  end
  max
end


a = "asjrgapa"
b = "abba"
puts length_of_longest_substring(b)
