# encoding: UTF-8
class Mailer < ActionMailer::Base
  default from: 'CANU <gettogether@canu.se>'

  def new_user_mail
    @user = user
    mail(:to => "poluzhnikov.vitali@gmail.com", :subject => user.email)
  end
  
  def info_mail(email)
    mail(:to => email, :subject => 'Time to get together!')
  end
 
end
