class UsersController < ApplicationController
  
  def stats
    @title = "Statistics"
    @confirm = User.find_all_by_used(true)
    @ask_for_code = User.find_all_by_code(nil)
  end
  
  def index
    @title = "CANU - Get Together"
    @user = User.new
  end
  
  def about
    @title = "CANU- About Us"
    @user = User.new
  end
  
  def world
    @title = "CANU- World"
    @user = User.new
  end
  
  def product
    @title = "CANU- Product"
    @user = User.new
  end
    
  def jobs
    @title = "CANU - Get Together"
    @user = User.new
  end
  
  def contact
    @title = "CANU - Get Together"
    @user = User.new
  end
  
  def press
    @title = "CANU - Get Together"
    @user = User.new
  end
  
  def new
    if request.post?
      @user = User.create(params[:user])
      if @user.valid?
        Mailer.new_user_mail(@user).deliver
        flash[:ok] = '<p>Thanks! Talk soon</p>'.html_safe
        flash[:goaway] = 'style="display:none"'.html_safe
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
    redirect_to(:back)
        
  end
  
  def verify_mail
    @user = User.find(params[:user_id])
    if @user
       (flash[:ok] = 'E-mail Confirmed') if @user.update_attribute(:email_confirm,true)
    end
    redirect_to root_url
  end 
end
