# basketball_team.rb
require 'scoreboard'

class BasketballTeam

  attr_reader :name, :location, :field_goals

  def initialize(name, location)
    @field_goals = Scoreboard.new(Goal.new(2))
    @name = name
    @location = location
  end

  def make_field_goal()
    return field_goals.make_one()
  end

  def score
    return field_goals.total_points    
  end
 
  def full_name
    return "#{location} #{name}"
  end

end
