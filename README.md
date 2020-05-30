# Songlink

Songlink API client library.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'songlink'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install songlink

## Usage

```ruby
require 'songlink'

songlink = Songlink.new
res = songlink.request({ url: 'spotify:track:0BKR0dFPDmhREewiiqGArC', userCountry: 'JP' })
```

### Setting API key
API key is optional.

Please refer to the [official API documentation](https://github.com/songlink/docs/blob/master/api-v1-alpha.1.md) on how to get API key.

```ruby
songlink = Songlink.new('your_api_key')
```

If environment variable SONGLINK_API_KEY is set in .bash_profile etc, no argument is necessary.

```
export SONGLINK_API_KEY=your_api_key
```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
