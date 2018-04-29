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

end #ends class
