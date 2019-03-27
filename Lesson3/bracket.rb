require 'pry'

def solution (s)
  pairs = {
    '{' => '}',
    '[' => ']',
    '(' => ')'
  }

  stack = []

  s.chars.each do |char|
    if pairs.keys.include?(char)
      ## goes through the first half of the brackets and verifies that its "normal"
      stack << char
    else
      ## goes through the second half in reverse to match the char
      return 0 if pairs[stack.pop] != char
    end
  end
  ## nothing should be left in the stack if it is balanced
  return 0 if stack.any?
  binding.pry
  1
end


solution('[()]')
