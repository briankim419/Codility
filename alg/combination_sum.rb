require 'pry'

def combination_sum(candidates, target)
  candidates.sort!
  combination = []
  results = []
  find_combination_sum(results, combination, candidates, target, 0)
  return results
end

def find_combination_sum(results, combination, candidates, target, startIndex)
  if target == 0
    return (results << combination.dup)
  end
  for i in startIndex...candidates.length
    if(candidates[i] > target)
      return;
    end

    combination << candidates[i]
    find_combination_sum(results, combination, candidates, target - candidates[i], i)
    combination.pop
    ## this keeps the forloop going and checks the rest of the values at the same depth

  end
end

a = [2,3,6,7]
t = 7

combination_sum(a, t)
