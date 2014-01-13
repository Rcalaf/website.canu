class Webapplication::SessionController < Webapplication::WebapplicationController
 # before_filter :authenticate_user#,:except => [:signin]
  
  def sign_in
      @title = "CANU - Sign In"
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
