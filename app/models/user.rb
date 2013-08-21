class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable,
         :rememberable, :trackable, :validatable, :authentication_keys => [:name]
 


  attr_accessible  :displayname, :reset_password_token, :reset_password_sent_at, :email, :password, :password_confirmation, :remember_me, :name, :current_password

	validates_presence_of :name
	validates_presence_of :password, :on => :create

	has_many :comments

def send_password_reset
  generate_token(:reset_password_token)
  self.reset_password_sent_at = Time.zone.now
  save!
  UserMailer.reset_password_instructions(self).deliver
end

def generate_token(column)
  begin
    self[column] = SecureRandom.hex
  end while User.exists?(column => self[column])
end



  
	
end