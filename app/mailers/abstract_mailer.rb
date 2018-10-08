class AbstractMailer < ApplicationMailer
default from: 'abhijeet428001@gmail.com'
 
  def welcome_email
    @user = params[:user]
    @url  = 'http://prmeasia.spjimr.org/users/sign_in'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end
