get '/' do
  client = ESPN::Client.new(api_key: '8v9gq8r6ccrw43yjduz9nvka')
  @nhl = client.teams(:nhl)
  @headlines = client.headlines(:nhl)
  @scores = client.scores(:nhl)

  if Newsarticle.all.empty?
    store_headlines
  end
  erb :index
end

get '/logout' do
  session[:user_id] = nil
  redirect to '/'
end


post '/signup' do
  user = User.create(params[:user])
  fav_team = Team.find_by_name(params[:favorite_team])
  fav_team.users << user
  session[:user_id] = user.id
  redirect to "/"
end

post '/login' do
  found_user = User.find_by_username(params[:username])

  if found_user && found_user.authenticate(params[:password])
    session[:user_id] = found_user.id
    redirect to '/'
  else
    redirect to '/'
  end
end
