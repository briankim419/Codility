require 'pry'

def rotate(m)
  n = m.length

  for i in 0...(n / 2)
    for j in 0...(n - (2 * i) - 1)

      t = m[i + j][n - 1 - i]
      m[i + j][n - 1 - i] = m[i][i + j]
      m[i][i + j] = t

      t = m[n - 1 - i][n - 1 - i - j]
      m[n - 1 - i][n - 1 - i - j] = m[i][i + j]
      m[i][i + j] = t;

      t = m[n - 1 - i - j][i]
      m[n - 1 - i - j][i] = m[i][i + j]
      m[i][i + j] = t
      binding.pry
    end
  end
  binding.pry
  m
end

# def solution(matrix)
#
#   n = matrix.length
#   i = 0
#   j = 0
#
#   while i < n/2
#     while j < n - (2 * i) - 1
#
#       a = matrix[i][i + j]
#       b = matrix[i + j][n - i - 1]
#       c = matrix[n - 1 - i][n - 1 - i - j]
#       d = matrix[n - 1 - i - j][i]
#
#       t = matrix[i + j][n - i - 1]
#       matrix[i + j][n - i - 1] = matrix[i][i + j]
#       matrix[i][i + j] = t
#
#       t = matrix[n - 1 - i][n - 1 - i - j]
#       matrix[n - 1 - i][n - 1 - i - j] = matrix[i][i + j]
#       matrix[i][i + j] = t
#
#       t = matrix[n - 1 - i - j][i]
#       matrix[n - 1 - i - j][i] = matrix[i][i + j]
#       matrix[i][i + j] = t
#       binding.pry
#       j += 1
#     end
#
#     i += 1
#   end
#   binding.pry
#   puts matrix
# end

a = [
  [1,2,3,4],
  [5,6,7,8],
  [9,10,11,12],
  [13,14,15,16]
]
b =[[13, 9, 5, 1], [14, 6, 7, 2], [15, 10, 11, 3], [16, 12, 8, 4]]
rotate(a)
