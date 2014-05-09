class Webapplication::ActivitiesController < Webapplication::WebapplicationController
  #before_filter :authenticate_user
  before_filter :http_basic_auth, :except => [:invite, :show, :fullview_signedin]
  
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
=begin
    respond = request_to_canu_api("http://api.canu.se/activities/#{params[:activity_id]}",:get,{},{})
    @activity = JSON.parse(respond.body)
    respond = request_to_canu_api("http://api.canu.se/activities/#{params[:activity_id]}/chat",:get,{'authorization' => %{Token token="#{session[:user]['token']}"}},{})
    @chat_messages = JSON.parse(respond.body)
    respond = request_to_canu_api("http://api.canu.se/activities/#{params[:activity_id]}/attendees",:get,{},{})
    @attendees = JSON.parse(respond.body)

    respond = request_to_canu_api("http://api.canu.se/activities/#{params[:activity_id]}/invite",:get,{},{})
    @activity = JSON.parse(respond.body)
    respond = request_to_canu_api("http://api.canu.se/activities/#{params[:activity_id]}/chat",:get,{},{})
    @chat_messages = JSON.parse(respond.body)
    respond = request_to_canu_api("http://api.canu.se/activities/#{params[:activity_id]}/attendees",:get,{},{})
    @attendees = JSON.parse(respond.body)    
    @title = "CANU - Activity Details"
    @body_class = "webapp"
=end
  end
  
  
  def invite
      respond = request_to_canu_api("http://api.canu.se/activities/#{params[:invitation_token]}/invite",:get,{},{})
      @activity = JSON.parse(respond.body)
      puts @activity['end_date'].to_time
      puts Time.zone.now
      puts @activity['end_date'].to_time < Time.zone.now
      if @activity['end_date'].to_time < Time.zone.now
        @title = "CANU - Invitation Expired"
        @body_class = "invite"
        render 'expired'
      else
        respond = request_to_canu_api("http://api.canu.se/activities/#{@activity['id']}/chat",:get,{},{})
        @chat_messages = JSON.parse(respond.body)
        respond = request_to_canu_api("http://api.canu.se/activities/#{@activity['id']}/attendees",:get,{},{})
        @attendees = JSON.parse(respond.body)
        @title = "CANU - You're Invited"
        @body_class = "invite"
      end
   
  end
  
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
