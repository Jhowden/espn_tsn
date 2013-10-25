helpers do

def current_user
  @user ||= User.find(session[:user_id]) if session[:user_id]
end

def store_headlines
  @headlines.each do |headline| 
    Newsarticle.create(title:headline.headline, body:headline.description)
  end
end

def todays_games
  home_team_ids = []
  away_team_ids = []
  @scores.each do |game|
    home_team_ids << game.competitions[0].competitors[0].team.id
    home_team_ids << game.competitions[0].competitors[1].team.id
  end

   if home_team_ids.include?(current_user.team_id) || away_team_ids.include?(current_user.team_id)
    return true
   else
    return false
  end
end

end
