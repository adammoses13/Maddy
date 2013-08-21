class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, #:recoverable,
         :rememberable, :trackable, :validatable, :authentication_keys => [:name]
 


  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :current_password

	validates_presence_of :name
	validates_presence_of :password, :on => :create

	has_many :comments
	
end