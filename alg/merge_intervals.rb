require 'pry'
def merge(intervals)

    intervals.sort_by! { |interval| interval.start }
    solution = [intervals[0]]

    intervals.each do |interval|
        cs = interval.start
        ce = interval.end
        binding.pry
      last_s = solution[-1][0]
        last_e = solution[-1][1]
      if cs <= last_e
        solution[-1] = [last_s, [last_e, ce].max]
      else
        solution << [cs, ce]
      end
    end
    solution
end


a =[[1,4],[4,5]]

merge(a)
