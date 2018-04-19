class SideHustle::Odds
  attr_accessor

  def self.team_list
    puts = ["New England Patriots", "San Francisco 49ers", "LA Rams", "Seattle Seahawaks"]
  end

  def self.team_odds(team)
    puts "+500"
  end

  def self.scrape_test
    doc = Nokogiri::HTML(open("https://js.sbrfeeds.com/index.php/future?iframeid=iframe-odds-widget-5849247360332532&timezone=16&theme=future&markettypeid=311&odds-type=US&version=2.0&books=93,19,169,1096,999996,180,139&trackers=1518124627581.xml&event-id=3399565"))
    binding.pry
  end
end
