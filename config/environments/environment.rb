ActionMailer::Base.smtp_settings = {
  :user_name => 'capt_OG',
  :password => 'SendGrid01',
  :domain => 'artstmngr.com',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}
