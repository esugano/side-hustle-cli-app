class SideHustle::Odds
  attr_accessor :name, :odds

  def self.team_1(name, odds)
    team_1 = self.new
    team_1.name = name
    team_1.odds = odds
    puts team_1
  end

  def self.team_2(name, odds)
    team_2 = self.new
    team_2.name = name
    team_2.odds = odds
    puts team_2
  end

  def self.odds
    puts team_1
    puts team_2
  end

end
