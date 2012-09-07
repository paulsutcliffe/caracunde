ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "caracunde.com",
  :user_name            => "info@caracunde.com",
  :password             => "caracunde99",
  :authentication       => "plain",
  :enable_starttls_auto => true
}
