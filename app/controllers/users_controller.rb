class UsersController < ApplicationController

  def stats
    @title = "Statistics"
    @confirm = User.find_all_by_used(true)
    @ask_for_code = User.find_all_by_code(nil)
  end
  
 
  
  def new
 	 @user = User.new(params[:user])
 	 if @user.valid?
 	   @user.save
 	   flash[:ok] = '<p>Thanks! Talk soon</p>'.html_safe
     flash[:goaway] = 'style="display:none"'.html_safe
   else
     flash[:error] = @user.errors.first[1]
   end
   #Mailer.new_user_mail(@user).deliver
 
    redirect_to :back
  end
  
=begin
  def verify_mail
    @user = User.find(params[:user_id])
    if @user
       (flash[:ok] = 'E-mail Confirmed') if @user.update_attribute(:email_confirm,true)
    end
    redirect_to root_url
  end
=end
end
