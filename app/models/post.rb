class Post < ActiveRecord::Base
  validates_presence_of :title, :body, :user_id
end
