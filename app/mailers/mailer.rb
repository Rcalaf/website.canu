# encoding: UTF-8
class Mailer < ActionMailer::Base
  default from: 'no-replay@canu.se'

  def code_check_mail(user)
    @user = user
    mail(:to => user.email, :subject => "Canu: Confirm your email")
  end
  
  def new_user_mail(user)
    @user = user
    mail(:to => user.email, :subject => "Canu: Confirm your email")
  end
 
end
