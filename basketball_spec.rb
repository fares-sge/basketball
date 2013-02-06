# basketball_spec.rb
require 'basketball_team'

describe BasketballTeam do

  
  describe "#set name" do
    it 'sets the name to "Lakers" if initialized with "Lakers"' do
      team = BasketballTeam.new('Lakers', 'Los Angeles')
      team.name.should eq('Lakers')
    end
  end

  describe "#set location" do
    it 'sets the location to "Los Angeles" if initialized with "Los Angeles"' do
      team = BasketballTeam.new('Lakers', 'Los Angeles')
      team.location.should eq('Los Angeles')
    end
  end

  describe "#get full name" do
    it 'the full name should equal "Los Angeles Lakers" if the name and location are initialized with ("Lakers", "Los Angeles")' do
      team = BasketballTeam.new('Lakers', 'Los Angeles')
      team.full_name.should eq('Los Angeles Lakers')
    end
  end

  describe "#make_field_goal" do

    let(:team) { BasketballTeam.new('Lakers', 'Los Angeles') }

    it "adds 2 points to the team score" do
      team.score.should == 0 
      team.make_field_goal()
      team.score.should == 2
    end

    it "increases the field goal attempts by 1" do
      old_attempts = team.field_goals.attempts;
      team.make_field_goal()
      team.field_goals.attempts.should eq(old_attempts+1)
    end

    it "increases the field goal made by 1" do
      old_goals_made = team.field_goals.made
      team.make_field_goal()
      team.field_goals.made.should eq(old_goals_made+1)
    end

  end

end
