require 'pry'

def isValidSudoku(board)
        row = []
col = []
box = []

(0...board.length).each do |i|
    (0...board[i].length).each do |j|
        if(board[i][j] != '.')
            x = board[i][j]
            k = (i / 3) * 3 + j / 3
            row[i] ||= {}
            col[j] ||= {}
            box[k] ||= {}
            if(row[i][x] || col[j][x] || box[k][x])
                return 0
            else
                row[i][x] = col[j][x] = box[k][x] = true
            end
        end
    end
end
return 1

end


a = [
  ["5","3",".",".","7",".",".",".","."],
  ["6",".",".","1","9","5",".",".","."],
  [".","9","8",".",".",".",".","6","."],
  ["8",".",".",".","6",".",".",".","3"],
  ["4",".",".","8",".","3",".",".","1"],
  ["7",".",".",".","2",".",".",".","6"],
  [".","6",".",".",".",".","2","8","."],
  [".",".",".","4","1","9",".",".","5"],
  [".",".",".",".","8",".",".","7","9"]
]

isValidSudoku(a)