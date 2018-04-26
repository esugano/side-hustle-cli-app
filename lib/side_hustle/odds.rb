class SideHustle::Odds
  attr_accessor :list_teams, :team_names, :team_odd_scrape, :all

  @@all =

  def self.new(scrape_hash)
    @all = scrape_hash
    end

  def team_list
    @@all.each_with_index do |(key, value), index|
      puts "#{team[key][:name]}"
    end
  end

  def self.team_odds(team)
    puts "+500"
  end


end
