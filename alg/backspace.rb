require 'pry'

def backspace_compare(s, t)
    s_stack = []
    s.split("").each do |char|
        if char == "#"
            s_stack.pop
        else
            s_stack << char
        end
    end
    t_stack = []
    t.split("").each do |char|
        if char == "#"
            t_stack.pop
        else
            t_stack << char
        end
    end

    i = 0
    return false if t_stack.length != s_stack.length
    while i < t_stack.length
        if t_stack[i] != s_stack[i]
            return false
        end
        i += 1
    end
    return true
end

a = "ab#c"
b = "ad#c"

backspace_compare(a, b)
