class SideHustle::Odds
  attr_accessor :name, :odds, :list_teams

  @@all = []

  def self.new_from_scrape_page(name)
    self.new(name)
    @@all << self
  end

  def initialize(name)
    @name = name

    #grabs odds
    # code.css('.lines').each do |each_team|
    #   each_team.css('#book-19').each do |odds|
    #     @odds = odds.search('span').text
    #   end
    # end

    # #merge @scrape_team_names and @scrape_team_odds into one hash, @list_teams
    #   @scrape_team_names.each_with_index do |value, index|
    #     @list_teams["#{value}"] = {:name => value, :odds => @scrape_team_odds[index]}
    #   end
  end

  def self.all
    @@all
  end

  def self.list_teams
    #list all the names of the teams
    # @@all.each do |team|
    #   list_teams << team.name
    # end
  end

  def find_odds
    # @@all.each do |team|
    #   if name == ???
    #     return odds
    #   else
    #     keep going or return error
    #   end
  end
end #ends class
