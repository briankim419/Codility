require 'pry'

def license_key_formatting(s, k)
    b = s.split("-")
    new_s = ""
    b.each do |c|
        new_s += c.upcase
    end
    leng = new_s.length

    if leng % k == 0
        i = k
        while i < leng + (leng/k) - 1
            new_s.insert i, "-"
            i += k + 1
        end
    end

    if leng % k > 0
      i = leng % k
      while i < leng + (leng / k)
        new_s.insert i, "-"
        i += k + 1
      end
    end
    return new_s
end


license_key_formatting("5F3Z-2e-9-w", 4)
