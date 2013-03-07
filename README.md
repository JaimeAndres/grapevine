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

To Start a new app just execute

```bash
grapevine new <AppName>
```

Because the idea is to keep separated the versions of the api in the structure you have app/information.

Inside that route it should exist as many directories as versions (v1, v2, v3) with just one file inside: routes.rb.

If you want to follow the proposed convention, just name the directories as 'v1' and the file routes.rb (I know I'm repeating what's above but I think it's important)

You can execute following command to create a routes file

```bash
grapevine add_api_version
```

The generated app will include debugger, and thin :)

## Considerations
* If you don't want to use the routes generator, place the new routes file inside app/information/<version_number>/routes.rb
* The <version_number> format must be 'v1', 'v2', etc

* The format for responses and error are json, if you want to change them, just change it in your class, e.g.

```ruby
format :txt
error_formatter :txt
```
* The default web server is [thin](http://code.macournoyer.com/thin/) but you can change it in the gemfile
* I really like rspec, that's why the project includes it

* The enviroment to run the app is call ENV['GRAPEVINE_ENV'] so if you're going to deploy for production, don't forget
  to set a environment variable named 'GRAPEVINE_ENV'='production'

## Credits
All this work couldn't be possible without the existence of great projects like, so please refer to them to understand how they behave and how they can
be used, that way you'll be able to design and implement your api with better pratices.

* [grape](https://github.com/intridea/grape)
* [roar](github.com/apotonick/roar)
* [thor](https://github.com/wycats/thor)
* [thin](https://github.com/macournoyer/thin/)
* [rack](https://github.com/rack/rack)
* [sequel](https://github.com/jeremyevans/sequel)
* [debugger](https://github.com/cldwalker/debugger)

This is not the complete list, this is just the list of those gems I'm declaring directly, so for all hidden gems thank you so much to exist. 

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License
This content is released under the [MIT License](LICENSE.txt).
