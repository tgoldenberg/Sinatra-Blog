

get '/posts/new' do
  @post = Post.new
  erb :'posts/new'
end

get '/posts/:id' do
  @post = Post.find(params[:id])
  erb :'posts/show'
end

post '/posts' do
  @user = User.find(session[:user_id])
  @post = Post.new params[:post]
  @post.user_id = @user.id
  if @post.save
    redirect '/'
  else
  end
end


get '/posts/:id/edit' do
  @post = Post.find(params[:id])
  erb :'posts/edit'
end

put '/posts/:id' do
  @post = Post.find(params[:id])
  @post.update_attributes(params[:post])
  redirect '/'
end

get '/posts/index' do
  @posts = Post.all
end

delete '/posts/:id' do
  @post = Post.find(params[:id])
  @post.destroy
  redirect '/'
end





