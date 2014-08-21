get '/' do
  erb :index
end

get '/login' do
  erb :login
end

post '/login' do
  if @user = User.find_by(email: params[:email])
    p @user
    p params
    if @user.authenticate(email: params[:email])
      p "go to profile"
      session[:user_id] = @user.id
      redirect "/profile"
    else
      p "go to login"
      redirect '/login'
    end
  end
end
get '/logout' do
  session.clear
  redirect '/'
end