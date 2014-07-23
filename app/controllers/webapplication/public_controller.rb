class Webapplication::PublicController < Webapplication::WebapplicationController
  
  layout 'webapp'
 
 
  before_filter :http_basic_auth, :only => [:stockholm]
 
  def stockholm
    @title = "Stockholm"
    @body_class = "webapp"
    
    @confirm = User.find_all_by_used(true)
    @ask_for_code = User.find_all_by_code(nil)
    
    @long = params[:long] ? params[:long] : 18.06491
    @lat = params[:lat] ? params[:lat] : 59.32893
    
    respond_local = request_to_canu_api("https://api.canu.se/activities?latitude=#{@lat}&longitude=#{@long}")
    @activities = JSON.parse(respond_local.body)
    
    respond_local = request_to_canu_api("https://api.canu.se/statistics/all",:get,{},{})
    @data = JSON.parse(respond_local.body)
  end
  
  
  def summer
    @title = "Sommaren vi Skapar"
    @body_class = "summer"
    
    @long = params[:long] ? params[:long] : 18.06491
    @lat = params[:lat] ? params[:lat] : 59.32893
    
    respond_local = request_to_canu_api("https://api.canu.se/activities?latitude=#{@lat}&longitude=#{@long}")
    @activities = JSON.parse(respond_local.body)
  end
  
  def update_feed
    
  end
  
  def show
    respond = request_to_canu_api("https://api.canu.se/activities/#{params[:id]}")
    @activity = JSON.parse(respond.body)
    respond = request_to_canu_api("https://api.canu.se/activities/#{params[:id]}/chat")
    @chat_messages = JSON.parse(respond.body)
    respond = request_to_canu_api("https://api.canu.se/activities/#{params[:id]}/attendees")
    @attendees = JSON.parse(respond.body)    
    @title = "CANU - Public - Activity Details"
    @body_class = "webapp"
  end
  
end
