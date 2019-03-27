require 'pry'
def subdomain_visits(cpdomains)
    memo = {}

    cpdomains.each do |domain|
        dom = domain.split(" ")
        freq = dom[0].to_i
        dom_nam = dom[1].split(".")
        x = dom_nam[-1]

        if !memo.include?(dom[1])
            memo[dom[1]] = freq
        else
            memo[dom] += freq
        end

        if !memo.include?(dom_nam[-1])
            memo[dom_nam[-1]] = freq
        else
            memo[dom_nam[-1]] += freq
        end

        if domain.split(".").length == 3
            temp = domain.split(".")[1]
            a = "#{temp}.#{x}"
            if !memo.include?(a)
                memo[a] = freq
            else
                memo[a] += freq
            end
        end
    end

    solution = []

    memo.each do |k, v|
      z = "#{v.to_s} #{k}"
      solution << z
    end
    solution
end

a = ["900 google.mail.com", "50 yahoo.com", "1 intel.mail.com", "5 wiki.org"]

subdomain_visits(a)
