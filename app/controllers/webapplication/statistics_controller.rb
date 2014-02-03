class Webapplication::StatisticsController < Webapplication::WebapplicationController
  layout 'authorization'
   
  def index
    @body_class = "stats"
    respond_local = request_to_canu_api("http://api.canu.se/statistics/all",:get,{},{})
    puts respond_local.body
    @data = JSON.parse(respond_local.body)
    #data = '{"user":{"total":17,"total_phone_verified":1,"total_email_verified":1, "ghost":5, "not_verified":16},"activity":{"total":79,"total_active":1,"active_activities_locations":[{"activity":{"latitude":-42.605337,"longitude":-21.931285}}]}}'
 
  end
end
