require 'pry'
def prison_after_n_days(cells, n)
  temp = cells.dup
  n = (n - 1) % 14 + 1
  binding.pry
  n.times do
    cells.each_with_index do |num, idx|
        if idx == 0 || idx == cells.length - 1
          temp[idx] = 0
          next
        end

        if cells[idx- 1] == 0 && cells[idx + 1] == 0 || cells[idx- 1] == 1 && cells[idx + 1] == 1
            temp[idx] = 1
        else
          temp[idx] = 0
        end
    end
    cells = temp.dup
  end
  cells = temp.dup
end

a = [0,1,0,1,1,0,0,1]

prison_after_n_days(a, 10000)
