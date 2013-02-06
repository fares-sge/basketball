# basketball_team.rb

class Goal

  attr_reader :attempts, :made, :value

  def initialize(goal_value)
    @attempts = 0
    @made = 0
    @value = goal_value
  end

  def make_one()
    @attempts += 1
    @made += 1
    return @value
  end

  def missed_one()
    @attempts +=1
    return 0
  end

  def total_value
    return @made * @value
  end

end

class BasketballTeam

  attr_reader :name, :location, :field_goals

  def initialize(name, location)
    @field_goals = Goal.new(2)
    @name = name
    @location = location
  end

  def make_field_goal()
    return field_goals.make_one()
  end

  def score
    return field_goals.total_value    
  end
 
  def full_name
    return "#{location} #{name}"
  end

end
