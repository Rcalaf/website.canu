class Webapplication::WebapplicationController < ApplicationController
  
  before_filter :http_basic_auth
  
  layout 'webapp'
    
  protected 
  
  def authenticate_user
    if session[:user]
      response = request_to_canu_api("http://api.canu.se/session/", :post, {}, {token: session[:user]['token']})
      if response.code.to_i == 400
        redirect_to sign_in_url
        session[:user] = nil
      end
    else
      redirect_to sign_in_url
      session[:user] = nil
    end
  end
  
  def request_to_canu_api(url, method = :get,headers = {}, params = {})
    uri = URI.parse(url)
    http = Net::HTTP.new(uri.host, uri.port)
    if method == :post
      request = Net::HTTP::Post.new(uri.request_uri, headers)
      request.set_form_data(params)
    elsif method == :put
      request = Net::HTTP::Put.new(uri.request_uri, headers)
      request.set_form_data(params)
    elsif method == :delete
      request = Net::HTTP::Delete.new(uri.request_uri, headers)
    else
      request = Net::HTTP::Get.new(uri.request_uri, headers)
    end
    headers.each do |key,value|
      request.add_field(key,value)
    end
    response = http.request(request)
  end
end