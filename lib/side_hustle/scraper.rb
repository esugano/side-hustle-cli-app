class SideHustle::Scraper
  attr_accessor :messy_code, :scrape_team_names, :scrape_team_odds, :list_teams

  def self.scrape_page
    @scrape_team_names = []
    @scrape_team_odds = []
    @list_teams = {}

    #initial scrape
    @messy_code = Nokogiri::HTML(open("https://js.sbrfeeds.com/index.php/future?iframeid=iframe-odds-widget-5849247360332532&timezone=16&theme=future&markettypeid=311&odds-type=US&version=2.0&books=93,19,169,1096,999996,180,139&trackers=1518124627581.xml&event-id=3399565"))

    #grabs list of teams and saves them into the @scrape_team_names array
    @messy_code.css('.sides').each do |teams|
      teams.css('.team').each do |indiv_teams|
        @scrape_team_names << indiv_teams.text
      end
    end

   #grabs odds for each individual team and saves them into the @scrape_team_odds array
    @messy_code.css('.sides').each do |teams|
      teams.css('.lines').each do |each_team|
        each_team.css('#book-19').each do |odds|
          @scrape_team_odds << odds.search('span').text
        end
      end
    end

  #merge @scrape_team_names and @scrape_team_odds into one hash, @list_teams
  @scrape_team_names.each_with_index do |value, index|
    @list_teams = @list_teams.merge({:name => value, :odds => @scrape_team_odds[index]})
  end
    binding.pry
end

end
