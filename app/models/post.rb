class Post < ActiveRecord::Base
  has_many :posts
  belongs_to :user
  validates :title, :text, presence: true
  validates :title, :uniqueness => { :message => "Already Taken"}
end
