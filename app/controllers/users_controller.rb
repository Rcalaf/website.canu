class UsersController < ApplicationController
  
  def stats
    @title = "Statistics"
    @confirm = User.find_all_by_used(true)
    @ask_for_code = User.find_all_by_code(nil)
  end
  
  def index
    @title = "CANU - Get going together"
    if request.post?
      @user = User.find_by_code_and_used(params[:user][:code],false)
      if @user
        params[:user][:used] = true
        if @user.update_attributes(params[:user])
          Mailer.code_check_mail(@user).deliver
          flash[:ok] = '<p>Thanks! Talk soon</p>'.html_safe
        else
            #message = "<p>Oops!</p> <ul>"
            #@user.errors.each do |key,value|
            #  message += "<li>#{value}</li>"
            #end
            #message += "</ul>"
            flash[:error] = "code"
        end
      else
          flash[:error] = "code"#"<p>This code is not valid.</p>".html_safe
      end
    end
    @user = User.new
  end
  
  def new
    if request.post?
      @user = User.create(params[:user])
      if @user.valid?
        Mailer.new_user_mail(@user).deliver
        flash[:ok] = '<p>Thanks! Talk soon</p>'.html_safe
      else
        #message = "<p>Oops!</p> <ul>"
        #@user.errors.each do |key,value|
        #  message += "<li>#{value}</li>"
        #end
        #message += "</ul>"
        flash[:error] = "new"#message.html_safe
      end
    else
      @user.new
    end
    redirect_to root_url
    
  end
  
  def verify_mail
    @user = User.find(params[:user_id])
    if @user
       (flash[:ok] = 'Your mail has been confirmed') if @user.update_attribute(:email_confirm,true)
    end
    redirect_to root_url
  end
  
end
