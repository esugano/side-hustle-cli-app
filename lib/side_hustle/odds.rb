class SideHustle::Odds
  attr_accessor :list_teams, :team_names, :team_odd_scrape

  def initialize(scrape_hash)
    @list_teams = scrape_hash
  end

  def self.list_teams
    @list_teams.each_with_index do |(key, value), index|
      puts "#{team[key][:name]}"
    end
  end

  def self.team_odds(team)
    puts "+500"
  end


end
