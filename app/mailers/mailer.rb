# encoding: UTF-8
class Mailer < ActionMailer::Base
  default from: 'Get going <getgoing@canu.se>'

  def new_user_mail
    @user = user
    mail(:to => "poluzhnikov.vitali@gmail.com", :subject => user.email)
  end
 
end
