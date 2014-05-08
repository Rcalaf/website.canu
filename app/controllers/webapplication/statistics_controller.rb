class Webapplication::StatisticsController < Webapplication::WebapplicationController
  layout 'authorization'
  
  before_filter :http_basic_auth, :only => [:index]
   
  def index
    @body_class = "stats"
    @confirm = User.find_all_by_used(true)
    @ask_for_code = User.find_all_by_code(nil)
    respond_local = request_to_canu_api("http://api.canu.se/statistics/all",:get,{},{})
    @data = JSON.parse(respond_local.body)
    #data = '{"user":{"total":17,"total_phone_verified":1,"total_email_verified":1, "ghost":5, "not_verified":16},"activity":{"total":79,"total_active":1,"active_activities_locations":[{"activity":{"latitude":-42.605337,"longitude":-21.931285}}]}}'
 
  end
  
  def local_activities
     respond_local = request_to_canu_api("http://api.canu.se/statistics/all",:get,{},{})
     @data = JSON.parse(respond_local.body)
  end
end
