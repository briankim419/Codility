require 'pry'

def prison_after_n_days(cells, n)
    a = n % 14 + 3
    a.times do
      temp = cells[0...8]
      cells[0] = 0
      cells[7] = 0
      for i in 1..6
          if temp[i - 1] == 0 && temp[i + 1] == 0 || temp[i - 1] == 1 && temp[i + 1] == 1
              cells[i] = 1
          else
              cells[i] = 0
          end
      end
    end
    cells
end
c = [1, 0, 0, 1, 0, 0, 0, 1]
d = 826

a = [1,0,0,1,0,0,1,0]
b = 1000000000

prison_after_n_days(c, d)
