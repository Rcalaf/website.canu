class UsersController < ApplicationController
  def index
    if request.post?
      @user = User.find_by_code_and_used(params[:user][:code],false)
      if @user
        params[:user][:used] = true
        if @user.update_attributes(params[:user])
          Mailer.code_check_mail(user).deliver
          flash.now[:notice] = 'yeah'
        end
      else
          flash.now[:notice] = 'Uooops'
      end
    end
    @user = User.new
  end
  
  def new
    if request.post?
      @user = User.create(params[:user])
      if @user.valid?
        Mailer.new_user_mail(@user).deliver
        flash[:notice] = 'Yeah'
      else
        flash[:notice] = 'Uoooops'
        puts @user.errors.inspect
      end
    else
      @user.new
    end
    redirect_to root_url
    
  end
  
  def verify_mail
    @user = User.find_by_email(params[:email])
    if @user
       (flash[:notice] = 'Your mail has been confirmed') if @user.update_attribute(:email_confirm,true)
    end
    redirect_to root_url
  end
  
end
