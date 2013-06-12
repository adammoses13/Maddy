class UserMailer < ActionMailer::Base
  default from: "maddymoses13@hotmail.com"

  def welcome_email(user)
    @user = user
    @url  = "http://example.com/login"
    mail(:to => user.email, :subject => "Maddy's Music")
  end

end
