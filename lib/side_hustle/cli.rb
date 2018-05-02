#CLI Controller

class SideHustle::CLI
  attr_accessor :input

  @input = ""

 def self.call
   welcome
   menu
 end

 def self.welcome
   puts ""
   puts "WELCOME TO MY SPORTS GAMBLING HAVEN!"
   puts ""
 end


 def self.menu
  puts "Pick your team from the following list to get their odds"
  puts " "
  SideHustle::Scraper.new.scrape_page
  puts ""
  puts "NFL Teams List"
  puts "--------------"
  SideHustle::Odds.list_teams
  "Enter your pick now"
  @input = gets.strip.downcase

  binding.pry
  # if user_pick == one of the teams 
  #   return odds
  # else
  #   keep going


  SideHustle::Odds.odds(@user_pick)


  end

end

# def user_sport_choice
#   @user_sport = ""
#   while !@user_sport.include?("https:")
#     puts "Pick a sport. Choose from NFL, NBA, NHL, MLB, College Football, NCAA, Soccer, Tennis, UFC, or Boxing."
#     @user_sport = gets.chomp
#     case @user_sport.upcase
#     when "NFL"
#       @user_sport = "https://www.sportsbookreview.com/betting-odds/nfl-football/"
#     when "NBA"
#       @user_sport = "https://www.sportsbookreview.com/betting-odds/nba-basketball/"
#     when "NHL"
#       @user_sport = "https://www.sportsbookreview.com/betting-odds/nhl-hockey/"
#     when "MLB"
#       @user_sport = "https://www.sportsbookreview.com/betting-odds/mlb-baseball/"
#     when "COLLEGE FOOTBALL"
#       @user_sport = "https://www.sportsbookreview.com/betting-odds/college-football/"
#     when "NCAA"
#       @user_sport = "https://www.sportsbookreview.com/betting-odds/ncaa-basketball/"
#     when "SOCCER"
#       @user_sport = "https://www.sportsbookreview.com/betting-odds/soccer/"
#     when "TENNIS"
#       @user_sport = "https://www.sportsbookreview.com/betting-odds/tennis/"
#     when "UFC"
#       @user_sport = "https://www.sportsbookreview.com/betting-odds/ufc/"
#     when "Boxing"
#       @user_sport = "https://www.sportsbookreview.com/betting-odds/boxing/"
#     else
#       puts "Not valid. Try again."
#       @user_sport = "Not valid. Try again."
#      end #ends case loop
#   end #ends while loop
#   puts @user_sport
# end #ends list_sports
#
#
# def user_date_choice
#   @user_date = 00000000
#   while user_date == 00000000
#     puts "Pick a date in yyyymmdd format"
#     @user_date = gets.strip.to_i
#     if @user_date > 19800101
#       @user_url = "#{@user_sport}?date=#{@user_date}"
#     else
#       puts "Invalid date"
#       @user_date = 00000000
#     end
#   end
#   puts @user_url
# end
