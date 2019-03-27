require 'pry'

class Player
  attr_reader :id
  attr_accessor :scores

  def initialize(id)
    @id = id
    @scores = []
  end

  def avg_score
    sum = 0.00
    return 0.00 if @scores.empty?
    
    @scores.each do |score|
      sum += score
    end

    avg = (sum / @scores.length).round_to(2)
  end
end
