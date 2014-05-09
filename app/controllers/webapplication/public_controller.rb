class Webapplication::PublicController < Webapplication::WebapplicationController
  
  layout 'webapp'
 
  def public_stockholm
    @title = "Public - Stockholm"
    @body_class = "webapp"
    @user = User.new
  end
  
  def stockholm_summer
    @title = "The summer we co-create"
    @body_class = "summer"
    @user = User.new
  end
  
  def update_feed
    
  end
  
end
