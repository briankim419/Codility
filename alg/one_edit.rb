require 'pry'

def is_one_edit_distance(s, t)

    s = s.split("")
    t = t.split("")

    if [s.length, t.length].max - [s.length, t.length].min > 1 || s.length == 0 && t.length == 0
        return false
    end
    chance = true
    leng = [s.length, t.length].max

    i = 0
    j = 0

    if s.length == t.length
        while i < leng
            if s[i] != t[j] && chance == true
              if i == leng - 1
                return true
              end
                chance = false
                i += 1
                j += 1
                next
            end

            if s[i] != t[j] && chance == false
                return false
            end
            i += 1
            j += 1
        end
    else s.length != t.length
        if t.length > s.length
            s, t = t, s
        end
        while i < leng
            if s[i] != t[j] && chance == true
                chance = false
                i += 1
                next
            end

            if s[i] != t[j] && chance == false
                return false
            end
            i += 1
            j += 1
        end
    end
    return false if chance == true
    return true
end

a = "cb"
b = "ab"

is_one_edit_distance(a, b)
