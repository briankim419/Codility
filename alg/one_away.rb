require 'pry'

def solution(a,b)
  c = a.split("") - b.split("")
  return true if c.length == 1
  return false
end
