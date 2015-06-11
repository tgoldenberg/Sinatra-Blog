

get '/' do
  @posts = Post.paginate(page: params[:page], :per_page => 10).order('created_at DESC')
  @post = Post.new
  if session[:user_id]
    @user = User.find(session[:user_id])
  end
  erb :index
end
