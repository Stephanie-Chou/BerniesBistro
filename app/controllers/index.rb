get '/' do
  erb :index
end

get '/login' do
  erb :login
end

post '/login' do
  if @user = User.find_by(email: params[:email])
    if @user.authenticate(params[:email])
      session[:user_id] = @user.id
      redirect "/profile"
    else
      redirect '/login'
    end
  else
    redirect '/login'
  end
end
get '/logout' do
  session.clear
  redirect '/'
end