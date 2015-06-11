class Post < ActiveRecord::Base
  validates_presence_of :title, :body, :user_id
  has_many :comments
  belongs_to :user

end
