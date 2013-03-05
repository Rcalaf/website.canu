class UsersController < ApplicationController
  
  def stats
    @confirm = User.find_all_by_used(true)
    @ask_for_code = User.find_all_by_code(nil)
  end
  
  def index
    if request.post?
      @user = User.find_by_code_and_used(params[:user][:code],false)
      if @user
        params[:user][:used] = true
        if @user.update_attributes(params[:user])
          Mailer.code_check_mail(@user).deliver
          flash[:notify] = 'Ouw! Exciting!<br /> IMPORTANT: please confirm your email via the link that we sent to you.'.html_safe
        else
            message = "<p>Please correct the form:<br />"
            @user.errors.each do |key,value|
              message += "-#{value}<br />"
            end
            message += "</p>"
            flash[:notify] = message.html_safe
        end
      else
          flash[:notify] = "<p>This code is not valid.</p>".html_safe
      end
    end
    @user = User.new
  end
  
  def new
    if request.post?
      @user = User.create(params[:user])
      if @user.valid?
        Mailer.new_user_mail(@user).deliver
        flash[:notify] = 'Ouw! Exciting!<br /> IMPORTANT: please confirm your email via the link that we sent to you.'.html_safe
      else
        message = "<p>Please correct the form:<br />"
        @user.errors.each do |key,value|
          message += "-#{value}<br />"
        end
        message += "</p>"
        flash[:notify] = message.html_safe
      end
    else
      @user.new
    end
    redirect_to root_url
    
  end
  
  def verify_mail
    @user = User.find(params[:user_id])
    if @user
       (flash[:notice] = 'Your mail has been confirmed') if @user.update_attribute(:email_confirm,true)
    end
    redirect_to root_url
  end
  
end
