class UsersController < ApplicationController
  def index
    if request.post?
      @user = User.find_by_code_and_used(params[:user][:code],false)
      if @user
        params[:user][:used] = true
        if @user.update_attributes(params[:user])
          flash[:notice] = 'yeah'
        end
      else
          flash[:notice] = 'Uooops'
      end
    end
    @user = User.new
  end
  
  def new
    if request.post?
      @user = User.create(params[:user])
      if @user.valid?
        flash[:notice] = 'Yeah'
      else
        flash[:notice] = 'Uoooops'
      end
    else
      @user.new
    end
    
  end
  
end
