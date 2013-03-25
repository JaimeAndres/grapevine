# Grapevine

[Grape](https://github.com/intridea/grape) is a great micro-framework to create REST-like APIs, however its strongest point is, at the same time, its weakest point: there's no structure, so you can decide how to structure your code, how to define your app architecture and that could lead to ... a big mess, because a project without order could become unmaintainable.

Grapevine is an opinionated structure - with desires to become a framework ;) - to use [Grape](https://github.com/intridea/grape) to create REST-like APIs.

This structure includes [roar](github.com/apotonick/roar) for hypermediaAPI in case you want to deliver your api that way. It also includes rspec and debugger so you can start testing your api as soon as you begin writing it.

Please refer to docs so you can see what you get besides the possibility to start with an structure

Last but not least (in fact I think this is the main feature of grapevine), it's the structure which tries to keep good practices for class separations and mainly around the DCI concept. Keep in mind that instead of using Interaction the proposed name is Information, why? because when you interact with a service you're asking it for information.


## Installation

Add this line to your application's Gemfile:

    gem 'grapevine'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install grapevine

## Usage

Please refer to [grapevine docs](http://www.rubygrapevine.com/docs)


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
