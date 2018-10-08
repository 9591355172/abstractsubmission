class AbstractMailer < ApplicationMailer
default from: 'prme.asiaforum@spjimr.org'
 
  def welcome_email(user, upload)
  	@upload = upload
    @user = user
    @url  = 'http://prmeasia.spjimr.org/users/sign_in'
    mail(to: 'prme.asiaforum@spjimr.org', subject: 'New Abstract Uploaded')
  end
end
