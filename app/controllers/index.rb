get '/' do
  client = ESPN::Client.new(api_key: '8v9gq8r6ccrw43yjduz9nvka')
  @nhl = client.teams(:nhl)
  erb :index
end

post '/signup' do
  user = User.create(params[:user])
  fav_team = Team.find_by_name(params[:favorite_team])
  user.team << fav_team
  session[:user_id] = user.id
  redirect to "/"
end
