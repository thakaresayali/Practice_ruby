class Player
  def initialize(player1)
    @player1 = player1
    @pl_runs = []
  end

  def add_run(x)
    if x.instance_of?Integer and x.between?(0,7)
      @pl_runs.push(x)
    else
       puts "Invalid score - #{x}"
    end
  end

  def total_score
    return @pl_runs.sum
  end

  def boundaries
  b1 =  @pl_runs.select {|r| r >= 4}
  return b1.size
  end

  def no_of_balls
    return @pl_runs.size
  end

  def no_of_dot_balls
    dot =  @pl_runs.select {|r| r == 0}
    return dot.size
  end

  def run_at_ball(b)
    return @pl_runs[b-1]
  end

  def details
    # puts total_score
    # puts boundaries
    puts "Name: #{@player1}, Total Runs: #{total_score}, Boundries: #{boundaries}"
  end
end
player1 = Player.new("Dhoni")
player2 = Player.new("Sachin")

player1.add_run("a")
player1.add_run(-1)
player1.add_run(2.5)

player1.add_run(4)
player1.add_run(6)
player1.add_run(0)

puts player1.no_of_balls

puts player1.no_of_dot_balls

puts player1.run_at_ball(2)
puts player1.run_at_ball(1)
