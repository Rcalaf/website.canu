ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address => 'smtp.canu.se',
  :port => 25,
  :domain => 'canu.se',
  :authentication => :login,
  :user_name => 'getgoing@canu.se',
  :password => 'Itshalfpast8',
  :enable_starttls_auto => true
}

ActionMailer::Base.default_url_options[:host] = "canu.se"


=begin
Net::SMTP.start('smtp.canu.se', 25, 'canu.se','getgoing@canu.se', 'Itshalfpast8', :plain) do |smtp|
  smtp.send_message "mola", 'getgoing@canu.se', 'rcalaf.cot@gmail.com'
end
=end