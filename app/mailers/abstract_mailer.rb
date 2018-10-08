class AbstractMailer < ApplicationMailer
default from: 'abhijeet428001@gmail.com'
 
  def welcome_email(user, upload)
  	@upload = upload
    @user = user
    @url  = 'http://prmeasia.spjimr.org/users/sign_in'
    mail(to: 'abhijeet428001@gmail.com', subject: 'New Abstract Uploaded')
  end
end
