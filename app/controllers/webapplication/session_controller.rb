class Webapplication::SessionController < Webapplication::WebapplicationController
  before_filter :authenticate_user,:except => [:sign_in, :sign_up,:facebook_auth]
  protect_from_forgery :except => :set_location 
  
  def sign_in
      @title = "CANU - Sign In"
      @body_class = "authorization"
      if request.post? 
       response = request_to_canu_api("http://api.canu.se/session/login",:post,{},{email:params[:email],password:params[:password]})      
       if response.code.to_i == 200
         body = JSON.parse(response.body)    
         session[:user] = body
         #redirect_to fullview_signedin_url
         redirect_to activities_url
       else
         # show form errors notifications
       end
     end
  end
  
  def set_location
    if params[:lat] && params[:long]
      session[:lat] = params[:lat]
      session[:long] = params[:long]
    end
  end
  
  def reset_password
    if request.post? 
      
    else
    end
  end
  
  def facebook_auth

  end
  
  
  def sign_up
      @title = "CANU - Sign Up"
      @body_class = "authorization"
      if request.post? 
       response = request_to_canu_api("http://api.canu.se/session/login",:post,{},{email:params[:email],password:params[:password]})      
       if response.code.to_i == 200
         body = JSON.parse(response.body)    
         session[:user] = body
         redirect_to fullview_signedin_url
       else
         # show form errors notifications
       end
     end
  end
end
