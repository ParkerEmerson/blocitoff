if Rails.env.development?
  ActionMailer::Base.delivery_method = :smtp
  ActionMailer::Base.smtp_settings = {
    :address        => 'smtp.sendgrid.net',
    :port           => '587',
    :authentication => :plain,
    :user_name      => "app23377088@heroku.com",
    :password       => "so33s5yl",
    :domain         => 'heroku.com',
    :enable_starttls_auto => true
  }
end

##app23377088@heroku.com
##so33s5yl