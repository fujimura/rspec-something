# rspec-something [![Build Status](https://travis-ci.org/fujimura/rspec-something.png)](https://travis-ci.org/fujimura/rspec-something)

Something expects one message in your example.

## What is this?

Without rspec-something

```ruby
mail = double
mail.should_receive :deliver
UserMailer.should_receive(:hello).and_return mail
```

With rspec-something

```ruby
UserMailer.should_receive(:hello).and_return something.deliver
```

Congrats. You saved two lines.

## Installation

Add this line to your application's Gemfile:

    gem 'rspec-something'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rspec-something

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
