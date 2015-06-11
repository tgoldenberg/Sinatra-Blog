
# comments
post '/comments' do
  @user = User.find(session[:user_id])
  @comment = Comment.new params[:comment]
  @comment.user_id = @user.id
  if @comment.save
    redirect back
  else
    redirect back
  end
end

# delete comment

delete '/comments/:id' do
  @comment = Comment.find(params[:id])
  @comment.destroy
  redirect back
end

# update comment

put '/comments/:id' do
  @comment = Comment.find(params[:id])
  @comment.update_attributes(params[:comment])
  redirect "/posts/#{@comment.post.id}"
end

#edit comment
get '/comments/:id/edit' do
  @comment = Comment.find(params[:id])
  erb :'comments/edit'
end
