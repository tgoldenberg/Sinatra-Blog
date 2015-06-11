get '/' do
  @posts = Post.all.order("created_at DESC")
  @post = Post.new
  if session[:user_id]
    @user = User.find(session[:user_id])
  end
  erb :index
end
