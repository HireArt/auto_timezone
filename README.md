# AutoTimezone

Automatically infer and set `Time.zone` with each request. The available (and configurable)
strategies include:

* Using the timezone offset provided by the browser. **[Now supports Daylight Savings Time]**
* Using a value stored on `current_user` (or anything accessible in the context of the controller)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'auto_timezone'
```

And then execute:

    $ bundle

Lastly, add this line to the top of your `application.js` (it has no dependencies):

```javascript
//= require auto_timezone
```

## Usage

Without any additional configuration, your application should start honoring timezone by asking
the browser for the offset from UTC time.

To install the `auto_timezone.rb` configuration initializer, execute:

    $ rails g auto_timezone:install

Check out the generated `auto_timezone.rb` for more configuration settings.

## Limitations

Currently, the auto-inferred timezone will only take effect *after* the first pageload.

For the first pageload, you may want to set a more useful default timezone in `application.rb`:

```ruby
config.time_zone = 'Eastern Time (US & Canada)'
```

## To Do

* Implement `jsTimezoneDetect` strategy
* Implement tests
* Infer or approximate timezone during initial web request (somehow...)

## Contributing

1. Fork it ( https://github.com/smudge/auto_timezone/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
