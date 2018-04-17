class SideHustle::Odds
  attr_accessor :name, :time_1_odds, :time_2_odds, :time_3_odds, :time_4_odds, :time_5_odds, :time_6_odds, :time_7_odds, :time_8_odds, :time_9_odds, :time_10_odds

  def self.test
  puts "testing testing 1 2 3"

  date = "04/17"

  team_1 = self.new
  team_1.name = "New England"
  team_1.time_1_odds = "#{date} +500"
  team_1.time_2_odds = "#{date} +500"
  team_1.time_3_odds = "#{date} +500"
  team_1.time_4_odds = "#{date} +500"
  team_1.time_5_odds = "#{date} +500"
  team_1.time_6_odds = "#{date} +500"
  team_1.time_7_odds = "#{date} +500"
  team_1.time_8_odds = "#{date} +500"
  team_1.time_9_odds = "#{date} +500"
  team_1.time_10_odds = "#{date} +500"


  team_2 = self.new
  team_2.name = "Philadelphia"
  team_2.time_1_odds = "#{date} +500"
  team_2.time_2_odds = "#{date} +500"
  team_2.time_3_odds = "#{date} +500"
  team_2.time_4_odds = "#{date} +500"
  team_2.time_5_odds = "#{date} +500"
  team_2.time_6_odds = "#{date} +500"
  team_2.time_7_odds = "#{date} +500"
  team_2.time_8_odds = "#{date} +500"
  team_2.time_9_odds = "#{date} +500"
  team_2.time_10_odds = "#{date} +500"
  end

  puts team_1
  puts team_2
  
end
