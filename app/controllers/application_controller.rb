class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :http_basic_auth, :only => :stats
  
  protected
  
  def http_basic_auth
    authenticate_or_request_with_http_basic("If U are not Didrik you can't get in :(") do |username,password|
      username == "Canu" && password == "getTogether"
    end 
  end
  
end
