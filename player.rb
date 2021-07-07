class Player
  def initialize(player1)
    @player1 = player1
    @pl_runs = []
  end
  def add_run(x)
    @pl_runs.push(x)
  end
  def total_score
    return @pl_runs.sum
  end
  def boundaries
  b1 =  @pl_runs.select {|r| r >= 4}
  return b1.size
  end
  def details
    # puts total_score
    # puts boundaries
    puts "Name: #{@player1} Total Runs: #{total_score} Boundries: #{boundaries}"
  end
end
player1 = Player.new("Dhoni")
player2 = Player.new("Sachin")
player1.add_run(4)
player1.add_run(6)
player1.add_run(1)
player2.add_run(6)
player2.add_run(1)
puts player1.total_score
puts player2.total_score
puts player1.boundaries
puts player2.boundaries
puts player1.details
puts player2.details
