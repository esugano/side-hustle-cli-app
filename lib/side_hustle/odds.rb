class SideHustle::Odds
  attr_accessor :list_teams, :team_names, :team_odd_scrape, :test

  def self.team_list
    puts = ["New England Patriots", "San Francisco 49ers", "LA Rams", "Seattle Seahawaks"]
  end

  def self.team_odds(team)
    puts "+500"
  end

 # def self.scrape_iframe_url
 #   test = Nokogiri::HTML(open("https://www.sportsbookreview.com/betting-odds/ncaa-basketball"))
 #   test = test.css('.htmlContent')
 #   test = test.at_xpath('//iframe')
 #  #  test = test.xpath('//src')
 #   binding.pry
 # end

end
