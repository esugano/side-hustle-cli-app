class SideHustle::Odds
  attr_accessor :list_teams, :team_names, :team_odd_scrape

  def self.team_list
    puts = ["New England Patriots", "San Francisco 49ers", "LA Rams", "Seattle Seahawaks"]
  end

  def self.team_odds(team)
    puts "+500"
  end

  def self.scrape_test
    @team_names = []
    @team_odd_scrape = []
    @list_teams = {}
    #initial HTML
    messy_code = Nokogiri::HTML(open("https://js.sbrfeeds.com/index.php/future?iframeid=iframe-odds-widget-5849247360332532&timezone=16&theme=future&markettypeid=311&odds-type=US&version=2.0&books=93,19,169,1096,999996,180,139&trackers=1518124627581.xml&event-id=3399565"))

    #grabs list of teams array
    messy_code.css('.sides').each do |teams|
      teams.css('.team').each do |ind_teams|
        @team_names << ind_teams.text
      end #ends ind_team
    end #ends teams

   #grabs individual team and its odds
    messy_code.css('.sides').each do |teams|
      teams.css('.lines').each do |team|
        team.css('#book-19').each do |odds|
          @team_odd_scrape << odds.search('span').text
        end #ends odds
      end #ends team
    end #ends teamS

  #merge team_names and team_odd_scrape into one hash
  @team_names.each_with_index do |value, index|
    @list_teams[value] = @team_odd_scrape[index]
  end

  puts @list_teams
  binding.pry
  end #ends scrape_test
end
