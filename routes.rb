get '/' do
  if no_authentication?
    erb :"home"
  else
    "Hi, #{session[:name]}.  <img style='width:60px; border-radius:50%;' src='#{session[:picture]}' >"
  end
end

get '/games/:id' do
  @game = Game.find_by(id: 1)
  erb :"game"
end