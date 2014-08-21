get '/profile' do
  # show all the user's reservations
  @user = current_user
  erb :profile
end

get '/users/new' do
  erb :signup
end

post '/users' do
  user = User.create(params[:user])
  redirect '/login'
end

get '/reservations/new' do
  erb :reservation_new
end

post '/reservations' do
  @reservation = Reservation.create(params[:reservation])
  redirect '/profile'
end

get '/reservations/:reservation_id/edit' do
  @reservation = Reservation.find(params[:reservation_id])
  erb :reservation_edit
end

put '/reservations/:reservation_id' do
  @reservation = Reservation.find(params[:reservation_id])
  @reservation.update(params[:reservation])
  redirect '/profile'
end






# if a user logs in who is a patron, they can only see their own stuff

# if a user logs in who is an admin (if bernie logs in) then they can see all the reservations.