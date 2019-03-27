require 'pry'

def solutionss (x, a)

  leaves = [0] * (x + 1)

  a.each_with_index do |leaf, time|
    if leaves[leaf] == 0
      leaves[leaf] = time
    end
  end
  leaves.shift

  if leaves.include?(0)
    return -1
  else
    return leaves.max
  end

end

a = [1,1,1]

x = 1


def solution(x, a)
    b=[]
    sum=0
    a.count.times do |i|
        sum+=1 if b[a[i]].nil?
        b[a[i]]=1
        return i if sum == x
    end
    return -1
end

solution(x, a)
