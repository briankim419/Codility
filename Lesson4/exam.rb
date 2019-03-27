require 'pry'
class Leaderboard
attr_accessor :leaderboard
  def initialize()
    @leaderboard = []
  end
  #adds score to selected players scores and returns the average of all scores
  def add_score(player_id, score)
    sum = 0.00
    included = false
    @leaderboard.each { |player| included = true if player.id == player_id }
    @leaderboard << Player.new(player_id) if !included
    player = @leaderboard.select{ |player| player.id == player_id}
    player[0].scores << score
    player[0].scores.each do |score|
      sum += score
    end
    (sum / player[0].scores.size).round(2)
  end
  # returns selected players from given array of id's as (list) ordered by highest average score
  def top(max, list)
    selected = []
    selected_ids = []
    @leaderboard.each { |player| selected << player if list.include?(player.id) }
    sorted = selected.sort { |player_a, player_b| player_b.avg_score <=> player_a.avg_score }
    sorted[0..max].each { |player| selected_ids << player.id }
    selected_ids
  end
  #resets selected players score to 0
  def reset(player_id)
    player = @leaderboard.select{ |player| player.id == player_id}
    player[0].scores = []
  end
end

class Player
  attr_reader :id
  attr_accessor :scores
  def initialize(id)
    @id = id
    @scores = []
  end
  # determines players average score
  def avg_score
    sum = 0.00
    if @scores.empty?
      return 0
    else
      @scores.each do |score|
        sum += score
      end

    return (sum / @scores.size).round(2)
    end
  end
end
new_board = Leaderboard.new()
new_board.leaderboard << Player.new(1)
new_board.leaderboard << Player.new(2)
new_board.leaderboard << Player.new(3)
new_board.leaderboard << Player.new(4)
new_board.leaderboard << Player.new(5)
new_board.add_score(1, 50)
new_board.add_score(1, 30)
new_board.add_score(1, 45)
new_board.add_score(2, 32)
new_board.add_score(2, 97)
new_board.add_score(2, 40)
# expect leaderboard to be appropriate size
puts new_board.leaderboard.size == 5
puts new_board.leaderboard.size != 6
# expect add_score() to return correct averge after adding score to selected player
puts new_board.add_score(1, 35) == 40
# expect top() to return correct list of order player id's
puts "TOP()"
puts new_board.top(2, [1, 2]) == [2, 1]
puts new_board.top(2, [1, 2]) != [1, 2]
# expect reset() to reset selected players score to 0
new_board.reset(1)
puts new_board.leaderboard[0].scores.empty?
#expect avg_score() to return correct player average score
puts new_board.leaderboard[1].avg_score == 56.33
