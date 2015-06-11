

get '/posts/new' do
  @post = Post.new
  erb :'posts/new'
end

get '/posts/:id' do
  @post = Post.find(params[:id])
  erb :'posts/show'
end

post '/posts' do
  @post = Post.new params[:post]
  if @post.save
    redirect '/'
  else
  end
end

get '/posts/:id/short_url' do
  @post = Post.find(params[:id])
  @post.save

end

get '/posts/:id/edit' do
  @post = Post.find(params[:id])
end

put '/posts/:id' do
  @post = Post.find(params[:id])
  erb :'posts/show'
end

get '/posts/index' do
  @posts = Post.all
end

delete '/posts/:id' do
  @post = Post.find(params[:id])
end





