class Webapplication::WebapplicationController < ApplicationController
  
  layout 'webapp'
    
  protected 
  
  def authenticate_user
	  
  end
  
  def request_to_canu_api(url, method = :get,headers = {}, params = {})	
  
    uri = URI.parse(url)
    puts uri.inspect
    http = Net::HTTP.new(uri.host, 443)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    puts http.inspect
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