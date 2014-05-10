class Webapplication::PublicController < Webapplication::WebapplicationController
  
  layout 'webapp'
 
  def public_stockholm
    @title = "Public - Stockholm"
    @body_class = "webapp"
    
    respond_local = request_to_canu_api("https://api.canu.se/activities")
    @activities = JSON.parse(respond_local.body)
  end
  
  def stockholm_summer
    @title = "The summer we co-create"
    @body_class = "summer"
    @user = User.new
  end
  
  def update_feed
    
  end
  
end
