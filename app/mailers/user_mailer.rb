class UserMailer < ActionMailer::Base
  default from: "maddysmusicslc@gmail.com"


	def reset_password_instructions(user)
    @user = user
    mail(to: @user.email, subject: 'Reset Password')
  end

	def added_comment(user)
    @url  = 'http://desolate-brushlands-1406.herokuapp.com/users/sign_in'
    mail(to: user.email, subject: 'New Content Added')
  end

	def inquiry_email(inquiry)
    @inquiry = inquiry
    mail(to: "maddysmusicslc@gmail.com", subject: 'Website Inquiry')
  end

  def review_notification(review)
    @review = review
    mail(to: "maddysmusicslc@gmail.com", subject: 'A New Review Has Been Posted')
  end

end