Devise.setup do |config|
  config.mailer_sender = "djohnston@ucol.mx"
  config.mailer = "Devise::Mailer"
  config.parent_mailer = "ActionMailer::Base"
  require "devise/orm/active_record"
  config.authentication_keys = [:email]
  config.case_insensitive_keys = [:email]
  config.strip_whitespace_keys = [:email]
  config.params_authenticatable = true
  config.skip_session_storage = [:http_auth]
  config.stretches = Rails.env.test? ? 1 : 12
  config.send_email_changed_notification = true
  config.send_password_change_notification = true
  config.allow_unconfirmed_access_for = 2.days
  config.confirm_within = 3.days
  config.reconfirmable = true
  config.confirmation_keys = [:email]
  config.remember_for = 2.weeks
  config.expire_all_remember_me_on_sign_out = true
  config.extend_remember_period = false
  config.password_length = 6..20
  config.email_regexp = /\A[^@\s]+@[^@\s]+\z/
  config.timeout_in = 10.minutes
  config.lock_strategy = :failed_attempts
  config.unlock_keys = [:email]
  config.unlock_strategy = :email
  config.maximum_attempts = 3
  config.last_attempt_warning = true
  config.reset_password_keys = [:email]
  config.reset_password_within = 30.minutes
  config.sign_in_after_reset_password = true
  config.sign_out_via = :delete
  config.sign_in_after_change_password = true
  config.navigational_formats = ["*/*", :html, :turbo_stream]
end
