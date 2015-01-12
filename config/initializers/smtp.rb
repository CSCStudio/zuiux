# Gmail will be block, so we need a better gateway.
Rails.application.config.action_mailer.smtp_settings = {
    :address              => "smtp.gmail.com",
    :port                 => 587,
    :domain               => 'zuiux.com',
    :user_name             => Settings.smtp.username,
    :password             => Settings.smtp.password,
    :authentication       => 'plain',
    :enable_starttls_auto => true
}
