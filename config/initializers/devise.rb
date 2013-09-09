Devise.setup do |config|
  config.secret_key = '314967a7b97a60d5f3dcbdb60e0b2c050b30c3699f93a19d26593054826a367c11a1ff36fddaf7059d4ac5c3bcf28787e3fbee2b30c408e8e388f456bcbd3fc0'

  config.mailer_sender = 'please-change-me-at-config-initializers-devise@example.com'

  require 'devise/orm/active_record'

  config.case_insensitive_keys = [ :email ]

  config.strip_whitespace_keys = [ :email ]

  config.skip_session_storage = [:http_auth]

  config.stretches = Rails.env.test? ? 1 : 10

  config.reconfirmable = true

  config.password_length = 8..128

  config.reset_password_within = 6.hours

  config.sign_out_via = :delete
end
