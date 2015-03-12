class User < ActiveRecord::Base


  has_many :teams
  has_many :players 

  validates_presence_of :username, :email
  validates :username, presence: true, uniqueness: { case_sensitive: false }
  validates :email, presence: true, uniqueness: true
  validates :password, length: { minimum: 6 }
  validates :password_confirmation, presence: true
  has_secure_password
  

end
