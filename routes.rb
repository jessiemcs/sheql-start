get '/' do
  if no_authentication?
    erb :"dangan_info"
  else
    "Hi, #{session[:name]}.  <img style='width:60px; border-radius:50%;' src='#{session[:picture]}' >"
  end
end

get '/games/:danganronpa' do
  id = params[:danganronpa]
  @game = Game.find_by(id: id)
  erb :"game"
end

get '/characters/:danganronpa' do
  id = params[:danganronpa]
  @character = Character.find_by(id: id)
  erb :"character"
end

get '/animes/:danganronpa' do
  id = params[:danganronpa]
  @anime = Anime.find_by(id: id)
  erb :"anime"
end