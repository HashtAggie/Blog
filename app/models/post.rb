class Post < ActiveRecord::Base
  mount_uploader :image, ImagesUploader
  has_many :comments
  belongs_to :admin
  has_one :image
  validates :title, :text, presence: true
  validates :title, :uniqueness => { :message => "Already Taken"}
end
