class Post < ActiveRecord::Base
  has_many :posts
  validates :title, :text, presence: true
end
