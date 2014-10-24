# DurationHelpers

DurationHelpers provides rails helpers for converting duration in H:M:S format to seconds and seconds to duration in H:M:S format.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'duration_helpers'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install duration_helpers

## Usage

    duration_to_seconds('00:00:12')
    => 12

    seconds_to_duration(12)
    => "00:00:12"  


## Contributing

1. Fork it ( https://github.com/dbackowski/duration_helpers/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
