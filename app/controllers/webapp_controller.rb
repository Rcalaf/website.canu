class WebappController < ApplicationController
	layout 'webapp'
	
	def activities
	  @title = "CANU - Activities"
    @body_class = "webapp"
    
    @activities = get_from_canu_api("http://api.canu.se/activities")

  end
	
  def fullview

    @activity = get_from_canu_api("http://api.canu.se/activities/#{params[:activity_id]}")
    @chat_messages = get_from_canu_api("http://api.canu.se/activities/#{params[:activity_id]}/chat")
    @attendees = get_from_canu_api("http://api.canu.se/activities/#{params[:activity_id]}/attendees")
    @title = "CANU - Activity Invite"
    @body_class = "webapp"
    @user = User.new
  end
  
  def expired
    @title = "CANU - Expired Activity"
    @body_class = "expired"
    @user = User.new
  end
  
  private 
  
  def get_from_canu_api(url,headers = {})
    uri = URI.parse(url)
    http = Net::HTTP.new(uri.host, uri.port)
    request = Net::HTTP::Get.new(uri.request_uri, headers)
    response = http.request(request)
    JSON.parse(response.body)
  end
  
end
