ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address => 'smtp.canu.se',
  :port => 587,
  :domain => 'canu.se',
  :authentication => :plain,
  :user_name => 'getgoing@canu.se',
  :password => 'Itshalfpast8',
  :enable_starttls_auto => true
}

ActionMailer::Base.default_url_options[:host] = "canu.se"

