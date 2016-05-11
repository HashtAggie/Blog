class User < ActiveRecord::Base
  has_and_belongs_to_many :posts
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :authentication_keys => [:login]

   validate :validate_username

 def validate_username
   if User.where(email: username).exists?
     errors.add(:username, :invalid)
   end
 end

 def find_for_database_authentication(conditions)
    find_for_authentication(conditions)
  end
end
