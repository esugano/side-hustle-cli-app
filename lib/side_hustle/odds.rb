class SideHustle::Odds
  attr_accessor :list_teams

  def self.team_list
    puts = ["New England Patriots", "San Francisco 49ers", "LA Rams", "Seattle Seahawaks"]
  end

  def self.team_odds(team)
    puts "+500"
  end

  def self.scrape_test
    @list_teams = []
    #initial HTML
    messy_code = Nokogiri::HTML(open("https://js.sbrfeeds.com/index.php/future?iframeid=iframe-odds-widget-5849247360332532&timezone=16&theme=future&markettypeid=311&odds-type=US&version=2.0&books=93,19,169,1096,999996,180,139&trackers=1518124627581.xml&event-id=3399565"))
    messy_code.css('.sides').each do |teams|
      team.css('.team').each do |ind_teams|
        @list_teams << ind_teams.text
      end
    end
    binding.pry
  end
end
