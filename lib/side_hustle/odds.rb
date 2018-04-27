class SideHustle::Odds
  attr_accessor :name, :odds

  @@all = []

  def self.new_from_scrape_page(code)
    self.new(code)
  end

  def initialize(code)
    #grabs name
    code.css('.team').each do |indiv_teams|
      @name = indiv_teams.text
    end

    #grabs odds
    code.css('.lines').each do |each_team|
      each_team.css('#book-19').each do |odds|
        @odds = odds.search('span').text
      end
    end

    @@all << self
  end

  def self.all
    @@all
  end

  def self.list_teams
    #list all the names of the teams
  end

  def find_odds
    # #loop those all the team names
    #   if name == user_input_name
    #     return odds
    #   else
    #     keep going or return error
    #   end
  end
end #ends class
