AutoTimezone.configure do |config|
  # To allow users to customize their timezone (once logged-in), uncomment the following line
  # and modify to support your desired method of retrieving a timezone:
  #
  # config.default_timezone do
  #   current_user.timezone
  # end

  # Because multiple named timezones fall under the same UTC offset, we have no way of knowing
  # the exact timezone (by name). You may customize a list of "preferred" timezones if you have a
  # general idea of where your users reside, within a specific UTC offset.
  # The default config value is: ['US/Eastern', 'US/Central', 'US/Mountain', 'US/Pacific']
  #
  # config.preferred_timezones += %w(Hawaii Alaska)
end
