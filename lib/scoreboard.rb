# scoreboard.rb
require 'goal'

class Scoreboard

  # attempts, made: integer values reflecting how many goals were attempted and how many were made
  # goal_type: Goal struct
  attr_reader :attempts, :made, :goal_type


  def initialize(goal_type)
    @attempts = 0
    @made = 0
    @goal_type = goal_type
  end

  def make_one()
    @attempts += 1
    @made += 1
    return @goal_type.point_value
  end

  def missed_one()
    @attempts +=1
    return 0
  end

  def total_points
    return @made * @goal_type.point_value
  end

end