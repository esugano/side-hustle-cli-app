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

end #ends class
