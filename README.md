# Grapevine

[Grape](https://github.com/intridea/grape) is a great micro-framework to create REST-like APIs, however the strongest point is, at the same time, the weakest point. There's no structure, so you can decide how to structure your code, how to define your app architecture
and that could lead to ... a big mess, because a project without order could have duplicated code, buggy code and ultimately incorrect solutions for the proposed problem.

Grapevine is an opinionated structure - with desires to become a framework ;) - to use [Grape](https://github.com/intridea/grape) to create REST-like APIs.

This structure includes [roar](github.com/apotonick/roar) for hypermediaAPI in case you want to deliver your api that way. It also includes rspec and debugger so you can start testing your api as soon as you begin writing it.

You can create an app with a db connection; you can decide to use activerecord or sequel and no matter which one you choose you can use postgresql or mysql, obviously you can decide to use a blank project without any specific db connection well just follow the instructions describe below.

Last but not least, in fact I think this is the main feature of grapevine, it's the structure which tries to keep good practices for class separations and mainly around the DCI concept, however in this structure instead of using *Interaction* the proposed name is *Information*, please refer
to ... for more info

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

or

```bash
grapevine new <AppName> --withdb <sequel|activerecord> --dbms <pg|mysql2>
```

The option --dbms is pg as default in case you don't want to include it

Because the idea is to keep separated the versions of the api in the structure you have app/information.

Inside that route it should exist as many directories as versions (v1, v2, v3) with just one file inside: routes.rb.

If you want to follow the proposed convention, just name the directories as 'v1' and the file routes.rb (I know I'm repeating what's above but I think it's important)

You can execute following command to create a routes file

```bash
grapevine add_api_version
```

The generated app will include debugger, and thin :)

## Representers

Just create a module and include Grapevine::Representer

```ruby
module BookRepresenter
  include Grapevine::Representer
end
```

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

* The enviroment to run the app is call ENV['<MYAPP>'] so if you're going to deploy for production, don't forget
  to set a environment variable named <MYAPP>='production' where <MYAPP> is the name of your app in uppercase and without spaces

* As convention I suggest that the database for test should be named like development database but with '_test' suffix

* You can run migrations

```bash
rake db:new_migration name=<name_of_the_file_without_extension>
rake db:migrate
```

1) If you choose activerecord please refer to [standalone-migrations](https://github.com/thuss/standalone-migrations)
2) If you choose sequel please refer to [sequel](https://github.com/jeremyevans/sequel))


## Credits
All this work couldn't be possible without the existence of great projects like, so please refer to them to understand how they behave and how they can
be used, that way you'll be able to design and implement your api with better pratices.

* [grape](https://github.com/intridea/grape)
* [roar](github.com/apotonick/roar)
* [thor](https://github.com/wycats/thor)
* [thin](https://github.com/macournoyer/thin/)
* [rack](https://github.com/rack/rack)
* [sequel](https://github.com/jeremyevans/sequel)
* [standalone-migrations](https://github.com/thuss/standalone-migrations)
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
