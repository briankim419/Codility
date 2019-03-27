require 'pry'

def is_valid(s)
    return false if s.split("").length == 1
    return true if s.split("").length == 0

    stack = []
    hash = { "{" => "}",
            "(" => ")",
            "[" => "]"
    }
    s.split("").each do |sign|
       if hash.include?(sign)
           stack << hash[sign]
       else
           if stack[-1] != sign || stack.empty?
               return false
           else
               stack.pop
           end
       end
    end
    return false if !stack.empty?
    return true
end

a = "(("

is_valid(a)
