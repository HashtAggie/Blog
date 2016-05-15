class Post < ActiveRecord::Base
  mount_uploader :image, ImagesUploader
  has_many :comments
  belongs_to :user
  has_one :image
  validates :title, :text, presence: true
  validates :title, :uniqueness => { :message => "Already Taken"}
end
