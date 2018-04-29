class SideHustle::Scraper
  attr_accessor :name, :odds

  def get_page
    Nokogiri::HTML(open("https://js.sbrfeeds.com/index.php/future?iframeid=iframe-odds-widget-5849247360332532&timezone=16&theme=future&markettypeid=311&odds-type=US&version=2.0&books=93,19,169,1096,999996,180,139&trackers=1518124627581.xml&event-id=3399565"))
  end

  def scrape_page
    self.get_page.css(".sides").each do |team_odd_combo|
      #scrapes the name of the team
      team_odd_combo.css('.team').each do |each_team|
        @name = each_team.text
      end
      #scrapes the odds for the specific team
      team_odd_combo.css('.lines').each do |each_team|
         each_team.css('#book-19').each do |each_team_odds|
          @odds = each_team_odds.search('span').text
         end #ends line 14
      end #ends line 13
      #creates a SideHustle::Odds class with the name and odd
      SideHustle::Odds.new(@name, @odds)
    end #ends line 9
  end #ends #scrape_page
 end

#SideHustle::Scraper.new.scrape_page

  # def make_teams
  #   self.scrape_page.css('.team').each do |teams|
  #     SideHustle::Odds.new_from_scrape_page("#{teams.text}")
  # #   end
  # end

  # def make_teams
  #   scrape_teams.each do |t|
  #     t.css('.team').each do |indiv_teams|
  #       SideHustle::Odds.new_from_scrape_page(indiv_teams.text)
  #       binding.pry
  #   end
  # end

  # def scrape_page
  #   @scrape_team_names = []
  #   @scrape_team_odds = []
  #   @list_teams = {}
  #
  #   #initial scrape
  #   @messy_code = Nokogiri::HTML(open("https://js.sbrfeeds.com/index.php/future?iframeid=iframe-odds-widget-5849247360332532&timezone=16&theme=future&markettypeid=311&odds-type=US&version=2.0&books=93,19,169,1096,999996,180,139&trackers=1518124627581.xml&event-id=3399565"))
  #
  #   #grabs list of teams and saves them into the @scrape_team_names array
  #   @messy_code.css('.sides').each do |teams|
  #     teams.css('.team').each do |indiv_teams|
  #       @scrape_team_names << indiv_teams.text
  #     end
  #   end
  #
  #  #grabs odds for each individual team and saves them into the @scrape_team_odds array
  #   @messy_code.css('.sides').each do |teams|
  #     teams.css('.lines').each do |each_team|
  #       each_team.css('#book-19').each do |odds|
  #         @scrape_team_odds << odds.search('span').text
  #       end
  #     end
  #   end
  #
  # #merge @scrape_team_names and @scrape_team_odds into one hash, @list_teams
  #   @scrape_team_names.each_with_index do |value, index|
  #     @list_teams["#{value}"] = {:name => value, :odds => @scrape_team_odds[index]}
  #   end
  #
  #   #prints out @list_teams
  #   puts @list_teams
#   # end
#
