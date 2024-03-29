class WebappController < ApplicationController
	layout 'webapp'


# Support
 
  def expired
    @title = "CANU - Expired Activity"
    @body_class = "expired"
    @user = User.new
  end
  
  def privacyapp
      @title = "CANU - Privacy"
      @user = User.new
      @body_class = "authorization"
  end
  
  def termsapp
      @title = "CANU - Terms"
      @user = User.new
      @body_class = "authorization"
  end
  
  def lockdown
      @title = "CANU - Lockdown"
      @user = User.new
      @body_class = "authorization"
  end


# Links

  def d
      @title = "CANU - Download"
      @user = User.new
      @body_class = "authorization"
  end
  
  def a
      @title = "CANU - Download"
      @user = User.new
      @body_class = "authorization"
  end
  
  def b
      @title = "CANU - Download"
      @user = User.new
      @body_class = "authorization"
  end
  
  def p
      @title = "CANU - Download"
      @user = User.new
      @body_class = "authorization"
  end
  
  def s
      @title = "CANU - Download"
      @user = User.new
      @body_class = "authorization"
  end
  

=begin  

  def activities
    @title = "CANU - Activities"
    @body_class = "webapp"
    @activities = get_from_canu_api("http://api.canu.se/activities")
    @user = User.new
  end
	
  def fullview
    @activity = get_from_canu_api("http://api.canu.se/activities/#{params[:activity_id]}")
    @chat_messages = get_from_canu_api("http://api.canu.se/activities/#{params[:activity_id]}/chat")
    @attendees = get_from_canu_api("http://api.canu.se/activities/#{params[:activity_id]}/attendees")
    @title = "CANU - Activity Details"
    @body_class = "webapp"
    @user = User.new
  end
  
  def invite
      @activity = get_from_canu_api("http://api.canu.se/activities/invite/#{params[:activity_id]}")
      @chat_messages = get_from_canu_api("http://api.canu.se/activities/#{params[:activity_id]}/chat")
      @attendees = get_from_canu_api("http://api.canu.se/activities/#{params[:activity_id]}/attendees")
      @title = "CANU - You're Invited"
      @body_class = "invite"
      @user = User.new
  end
  
  def fullview_signedin
      @activities = get_from_canu_api("http://api.canu.se/activities")
      @title = "CANU - You're Invited"
      @body_class = "webapp"
      @user = User.new
  end


  def contribute
      @title = "CANU - Contribute"
      @user = User.new
      @body_class = "authorization"
  end
  
  def iamnew_account
      @title = "CANU - I'm New - Account"
      @user = User.new
      @body_class = "authorization"
  end
  
  def iamnew_profile
      @title = "CANU - I'm New - Profile"
      @user = User.new
      @body_class = "authorization"
  end
  
  def signin
      @title = "CANU - Sign In"
      @user = User.new
      @body_class = "authorization"
  end
 
  def settings
      @title = "CANU - Your Settings"
      @user = User.new
      @body_class = "authorization"
  end
  
  def edit_profile
      @title = "CANU - Edit Profile"
      @user = User.new
      @body_class = "authorization"
  end
=end 
  private 
  
  def get_from_canu_api(url,headers = {})
    uri = URI.parse(url)
    http = Net::HTTP.new(uri.host, uri.port)
    request = Net::HTTP::Get.new(uri.request_uri, headers)
    response = http.request(request)
    JSON.parse(response.body)
  end
  
end
