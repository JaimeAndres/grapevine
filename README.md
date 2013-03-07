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

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
