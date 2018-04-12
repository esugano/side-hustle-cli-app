#CLI Controller

class SideHustle::CLI

 def call
   puts "Testing testing 123"
   list_sports
 end

 def list_sports
   user_sport = ""
   while !user_sport.include?("https:")
     puts "Pick a sport. Choose from NFL, NBA, NHL, MLB, College Football, NCAA, Soccer, Tennis, UFC, or Boxing."
     user_sport = gets.chomp
     case user_sport.upcase
     when "NFL"
       user_sport = "https://www.sportsbookreview.com/betting-odds/nfl-football/"
     when "NBA"
       user_sport = "https://www.sportsbookreview.com/betting-odds/nba-basketball/"
     when "NHL"
       user_sport = "https://www.sportsbookreview.com/betting-odds/nhl-hockey/"
     when "MLB"
       user_sport = "https://www.sportsbookreview.com/betting-odds/mlb-baseball/"
     when "COLLEGE FOOTBALL"
       user_sport = "https://www.sportsbookreview.com/betting-odds/college-football/"
     when "NCAA"
       user_sport = "https://www.sportsbookreview.com/betting-odds/ncaa-basketball/"
     when "SOCCER"
       user_sport = "https://www.sportsbookreview.com/betting-odds/soccer/"
     when "TENNIS"
       user_sport = "https://www.sportsbookreview.com/betting-odds/tennis/"
     when "UFC"
       user_sport = "https://www.sportsbookreview.com/betting-odds/ufc/"
     when "Boxing"
       user_sport = "https://www.sportsbookreview.com/betting-odds/boxing/"
     else
       puts "Not valid. Try again."
       user_sport = "Not valid. Try again."
      end #ends case loop
   end #ends while loop
   puts user_sport
 end #ends list_sports

end
