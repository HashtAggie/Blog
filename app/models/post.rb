class Post < ActiveRecord::Base
  has_many :posts
  belongs_to :admin
  has_one :admin
  validates :title, :text, presence: true
  validates :title, :uniqueness => { :message => "Already Taken"}
end
