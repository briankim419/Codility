require 'pry'

def solution(a)
  running_sum = 0
  mini = Float::INFINITY

  s = a.reduce(:+)

  a[0...-1].each do |num|
    running_sum += num
    puts "#{running_sum} #{s - running_sum}"
    mini = [mini, (running_sum - (s - running_sum)).abs].min
  end
  mini
end

a = [1, 1, 3]
solution(a)
