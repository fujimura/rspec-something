# rspec-something [![Build Status](https://github.com/fujimura/rspec-something/actions/workflows/ci.yml/badge.svg)](https://github.com/fujimura/rspec-something/actions/workflows/ci.yml)

Something expects one message in your example.

## What is this?

Without rspec-something:

```ruby
mail = double
expect(mail).to receive(:deliver)
expect(UserMailer).to receive(:hello).and_return mail
```

With rspec-something:

```ruby
expect(UserMailer).to receive(:hello).and_return something.deliver
```

Congrats. You saved two lines.

## Installation

Add this line to your application's Gemfile:

    gem 'rspec-something'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rspec-something

## Usage

Require and include matcher:

```ruby
require 'rspec/something'

RSpec.configure do |config|
  config.include RSpec::Something
end
```

See example in "What is this?" section for actual usage.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
