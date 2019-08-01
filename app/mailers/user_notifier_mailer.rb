class UserNotifierMailer < ApplicationMailer
	 default :from => 'support@teachers.com'

	 def welcome_user(user)
	 	@user = user
	 	@url = "http://localhost:3000"
	 	mail(to: @user.email, subject: "Welcome to Teachers")
	 end
end
