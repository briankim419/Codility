require 'pry'

def solutions(a)

  b = {}

  a.each do |x|
    if !b.keys.include?(x)
      b[x] = 1
    else
      b[x] += 1
    end
  end

  max = b.values.max > (a.length) / 2 ? b.key(b.values.max) : -1


end

def solution(a)
  if a.length == 0
    return -1
  end

  search = a.bsearch{|x| a.count(x) > (a.length) / 2}
  binding.pry
  sol = search.nil? ? -1 : a.index(sol)
  binding.pry
end


a = [3, 4, 3, 2, 3, -1, 3, 3]

solution(a)
