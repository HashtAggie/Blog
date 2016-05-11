class User < ActiveRecord::Base
  has_and_belongs_to_many :posts
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable,
         :validatable

attr_accessor :login

validate :validate_username

 def validate_username
   if User.where(email: username).exists?
     errors.add(:username, :invalid)
   end
 end

 def self.find_for_database_authentication(warden_conditions)
   conditions = warden_conditions.dup
   if login = conditions.delete(:login)
   else
     where(conditions).first
   end
 end


end
