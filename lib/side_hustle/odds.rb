class SideHustle::Odds
  attr_accessor :name, :odds, :list_teams

  @@all = []

  def initialize(name, odds)
    @name = name
    @odds = odds
    @@all << self
  end

  def self.all
    @@all
  end

  def self.list_teams
    @@all.each do |team|
      puts team.name
    end
  end

#returns user's team's odds based on user's team pick
  def self.odds(user_team)
    @@all.each do |team|
      if team.name == user_team
        puts team.odds
      end
    end
  end

end #ends class
