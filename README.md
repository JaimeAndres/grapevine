# Grapevine

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'grapevine'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install grapevine

## Usage

TODO: Write usage instructions here

### Considerations
* If you don't want to use the routes generator, place the new routes file inside app/information/<version_number>/routes.rb
* The <version_number> format must be 'v1', 'v2', etc

* The format for responses and error are json, if you want to change them, just change it in your class, e.g.

```ruby
format :txt
error_formatter :txt
```
* The default web server is [thin](http://code.macournoyer.com/thin/) but you can change it in the gemfile

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
