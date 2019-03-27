require 'pry'
def word_break(s, word_dict)
  isWordBreak = [false] * (s.length + 1)
  isWordBreak[0] = true

  for i in 0...s.length + 1
    j = 0
    while j < i
      binding.pry
      if word_dict.include?(s[0..j])
        binding.pry
        isWordBreak[j] = true
        j += 1
        next
      end

      if word_dict.include?(s[j..i])
        isWordBreak[i] = true
        break
      end

      j += 1
    end
  end

  binding.pry
  return isWordBreak[s.length]

end
s = "leetcode"
wordDict = ["leet", "code"]

a = "applepenapple"
b = ["apple", "pen"]

c = "catsandog"
d = ["cats", "dog", "sand", "and", "cat"]

word_break(c, b)
