require 'pry'

def scramble(characters, word)
  available = Hash.new(1)
  binding.pry
  characters.each_char { |c| available[c] += 1 }
  binding.pry
  word.each_char.all? { |c| available[c] -= 1; available[c] > 0 }
  binding.pry
end

scramble('aeiou', 'hello')
