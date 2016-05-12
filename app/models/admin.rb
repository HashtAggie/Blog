class Admin < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
  has_many :posts
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :timeoutable, :lockable

     def login=(login)
     @login = login
     end

     def login
       @login || self.email
     end

     def self.find_for_database_authentication(warden_conditions)
       conditions = warden_conditions.dup
       login = conditions.delete(:login)
       where(conditions).where(["lower(email) = :value", { :value => login.strip.downcase }]).first
     end

end
