get '/login' do
  erb :'auth/login'
end

get '/signup' do
  erb :'auth/signup'
end

post '/login' do
  @user = User.find_by(username: params[:username]).try(:authenticate, params[:password])
  if @user
    session[:user_id] = @user.id
    redirect '/'
  else
    @message = ["Username and password do not match!"]
    redirect back
  end
end

post '/signup' do
  @user = User.new(params[:user])
  if @user.save
    session[:user_id] = @user.id
    redirect '/'
  else
    @message = ["Your passwords don't match"]
    redirect back
  end
end

get '/logout' do
  session[:user_id] = nil
  redirect '/'
end

