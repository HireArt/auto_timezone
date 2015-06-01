# AutoTimezone

Automatically infer and set `Time.zone` with each request. The available (and configurable)
strategies include:

* Using the timezone offset provided by the browser.
* Using the [jsTimezoneDetect](https://bitbucket.org/pellepim/jstimezonedetect) javascript library.
* Using a value stored on `current_user` (or available through any such helper method)

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

To use the [jsTimezoneDetect](https://bitbucket.org/pellepim/jstimezonedetect) strategy, simply
include it before your `application.js`, like so:

```ruby
javascript_include_tag '//cdnjs.cloudflare.com/ajax/libs/jstimezonedetect/1.0.4/jstz.min.js'
```

Check out the generated `auto_timezone.rb` for more configuration settings.

## Limitations

Currently, the auto-inferred timezone will only take effect *after* the first pageload.

For the first pageload, you may want to set a more useful default timezone in `application.rb`:

```ruby
config.time_zone = 'Eastern Time (US & Canada)'
```

## To Do

* Implement `jsTimezoneDetect` strategy
* Implement `current_user` strategy

## Contributing

1. Fork it ( https://github.com/smudge/auto_timezone/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
