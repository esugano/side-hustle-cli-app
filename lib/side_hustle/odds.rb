class SideHustle::Odds
  attr_accessor :name, :odds

  def self.test
  puts "testing testing 1 2 3"
  end

  team_1 = self.new
  team_1.name = "New England Patriots"
  team_1.odds = "+500"

  team_2 = self.new
  team_1.name = "San Francisco 49ers"
  team_1.odds = "+850"

  [team_1, team_2]

#: private method `test' called for #<SideHustle::Odds:0x000000022872e0> (NoMethod)
# WHY IS THIS PRIVATE? 
end
