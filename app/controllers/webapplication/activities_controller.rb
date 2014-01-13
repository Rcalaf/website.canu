class Webapplication::ActivitiesController < Webapplication::WebapplicationController
  before_filter :authenticate_user
  
  def index
    puts session[:user]
    @title = "CANU - Activities"
    @body_class = "webapp"
    
    @lat_lng = cookies[:lat_lng].split("|")
    if @lat_lng.nil?
      respond_local = request_to_canu_api("http://api.canu.se/activities",:get,{},{})
    else
      respond_local = request_to_canu_api("http://api.canu.se/activities?latitude=#{@lat_lng[0]}&longitude=#{@lat_lng[1]}",:get,{},{})
    end
    @local_activities = JSON.parse(respond_local.body)
    
    respond_profile = request_to_canu_api("http://api.canu.se/users/#{session[:user]['id']}/activities/",:get,{'authorization' => %{Token token="#{session[:user]['token']}"}},{})
    @profile_activities = JSON.parse(respond_profile.body)
  end
  
  def show
    respond = request_to_canu_api("http://api.canu.se/activities/#{params[:activity_id]}",:get,{'authorization' => %{Token token="#{session[:user]['token']}"}},{})
    @activity = JSON.parse(respond.body)
    respond = request_to_canu_api("http://api.canu.se/activities/#{params[:activity_id]}/chat",:get,{'authorization' => %{Token token="#{session[:user]['token']}"}},{})
    @chat_messages = JSON.parse(respond.body)
    respond = request_to_canu_api("http://api.canu.se/activities/#{params[:activity_id]}/attendees",:get,{},{})
    @attendees = JSON.parse(respond.body)
    @title = "CANU - Activity Details"
    @body_class = "webapp"
  end
  
  
  def update_feed
    
  end
  
end
