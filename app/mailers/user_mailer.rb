class UserMailer < ActionMailer::Base
  default from: "MaddysMusicSLC@gmail.com"


def reset_password_instructions(user)
    @user = user
    mail(to: @user.email, subject: 'Reset Password')
  end
#def email_update(user)
#    @user = user
#    @url  = 'http://desolate-brushlands-1406.herokuapp.com/users/sign_in'
#    mail(to: @user.email, subject: "Updated Profile")
# end

end