class WebappController  < ActionController::Base
	layout 'webapp'
	
  def fullview
    @title = "CANU - Activity Invite"
    @body_class = "webapp"
    @user = User.new
  end
  
  def expired
    @title = "CANU - Expired Activity"
    @body_class = "expired"
    @user = User.new
  end
  
end
