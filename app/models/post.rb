class Post < ActiveRecord::Base
  has_many :posts
  validates :title, :text, presence: true
  validates :title, :uniqueness => { :message => "Already Taken"}
end
