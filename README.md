SsaToZips
===

Returns an array of zip codes for a given ssa county code.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ssa_to_zips'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ssa_to_zips

## Usage
pass in a county code as a string, returns an array of string zip codes.

```ruby
require 'ssa_to_zips'

SsaToZips.map("01110") # => ["36558", "36904", "36908", "36910", "36912", "36913", "36915", "36916", "36919", "36921", "36922"]
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/chickenriceplatter/ssa_to_zips.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

