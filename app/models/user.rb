class User < ActiveRecord::Base


  has_many :teams
  has_many :players 

  validates_presence_of :username, :email
  has_secure_password
  

end
