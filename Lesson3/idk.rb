require 'pry'

def textQueries(sentences, queries)
    output = []

    queries.each do |q|
      words = q.split(' ')
      temp = []
        sentences.each do |sen|
          a = true
          words.each do |w|
            if !sen.include?(w)
              a = false
            end
          end
          if a == true

            temp.concat([sentences.index(sen)])
          end
        end
        output.push(temp.flatten())

    end
    puts output
end

a = ['jim likes mary', 'kate likes tom','tom does not like jim']

b = ['jim tom', 'likes']

textQueries(a, b)
