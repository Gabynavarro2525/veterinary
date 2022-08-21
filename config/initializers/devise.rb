Devise.setup do |config|
<<<<<<< HEAD
  config.mailer_sender = 'please-change-me-at-config-initializers-devise@example.com'
=======
  config.mailer_sender = 'gabynavarro2525@gmail.com'
>>>>>>> main
  config.mailer = 'Devise::Mailer'
  config.parent_mailer = 'ActionMailer::Base'
  require 'devise/orm/active_record'
  config.authentication_keys = [:email]
<<<<<<< HEAD
  # Configure parameters from the request object used for authentication. Each entry
  # given should be a request method and it will automatically be passed to the
  # find_for_authentication method and considered in your model lookup. For instance,
  # if you set :request_keys to [:subdomain], :subdomain will be used on authentication.
  # The same considerations mentioned for authentication_keys also apply to request_keys.
  # config.request_keys = []
  config.case_insensitive_keys = [:email]
  config.strip_whitespace_keys = [:email]
  # enable it only for database (email + password) authentication.
  config.params_authenticatable = true
  # Tell if authentication through HTTP Auth is enabled. False by default.
  # It can be set to an array that will enable http authentication only for the
  # given strategies, for example, `config.http_authenticatable = [:database]` will
  # enable it only for database authentication.
  # For API-only applications to support authentication "out-of-the-box", you will likely want to
  # enable this with :database unless you are using a custom strategy.
  # The supported strategies are:
  # :database      = Support basic authentication with authentication key + password
  # config.http_authenticatable = false

  # If 401 status code should be returned for AJAX requests. True by default.
  # config.http_authenticatable_on_xhr = true

  # The realm used in Http Basic Authentication. 'Application' by default.
  # config.http_authentication_realm = 'Application'

  # It will change confirmation, password recovery and other workflows
  # to behave the same regardless if the e-mail provided was right or wrong.
  # Does not affect registerable.
  # config.paranoid = true

  config.skip_session_storage = [:http_auth]

  # By default, Devise cleans up the CSRF token on authentication to
  # avoid CSRF token fixation attacks. This means that, when using AJAX
  # requests for sign in and sign up, you need to get a new CSRF token
  # from the server. You can disable this option at your own risk.
  # config.clean_up_csrf_token_on_authentication = true

  # When false, Devise will not attempt to reload routes on eager load.
  # This can reduce the time taken to boot the app but if your application
  # requires the Devise mappings to be loaded during boot time the application
  # won't boot properly.
  # config.reload_routes = true
  config.stretches = Rails.env.test? ? 1 : 12
  config.send_email_changed_notification = false
  config.send_password_change_notification = false
=======
  config.case_insensitive_keys = [:email]
  config.strip_whitespace_keys = [:email]
  config.params_authenticatable = true
  config.skip_session_storage = [:http_auth]
  config.stretches = Rails.env.test? ? 1 : 12
  config.send_email_changed_notification = true
  config.send_password_change_notification = true
>>>>>>> main
  config.allow_unconfirmed_access_for = 2.days
  config.confirm_within = 3.days
  config.reconfirmable = true
  config.confirmation_keys = [:email]
  config.remember_for = 2.weeks
  config.expire_all_remember_me_on_sign_out = true
  config.extend_remember_period = false
<<<<<<< HEAD
  # Options to be passed to the created cookie. For instance, you can set
  # secure: true in order to force SSL only cookies.
  # config.rememberable_options = {}
  config.password_length = 6..128
  config.email_regexp = /\A[^@\s]+@[^@\s]+\z/
  config.timeout_in = 30.minutes
  config.lock_strategy = :failed_attempts
  config.unlock_keys = [:email]
  # Defines which strategy will be used to unlock an account.
  # :email = Sends an unlock link to the user email
  # :time  = Re-enables login after a certain amount of time (see :unlock_in below)
  # :both  = Enables both strategies
  # :none  = No unlock strategy. You should handle unlocking by yourself.
  # config.unlock_strategy = :both
  config.maximum_attempts = 20

  # Time interval to unlock the account if :time is enabled as unlock_strategy.
  # config.unlock_in = 1.hour

  # Warn on the last attempt before the account is locked.
  # config.last_attempt_warning = true
  config.reset_password_keys = [:email]
  config.reset_password_within = 6.hours
=======
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
>>>>>>> main
  config.sign_in_after_reset_password = true
  config.sign_out_via = :delete
  config.sign_in_after_change_password = true
  config.navigational_formats = ['*/*', :html, :turbo_stream]
end