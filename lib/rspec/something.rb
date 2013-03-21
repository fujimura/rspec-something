require 'rspec'
require "rspec/something/version"
require "rspec/something/proxy"

RSpec.configure do |config|
  include Rspec::Something
end

module Rspec
  module Something

    # Return something should receive a message.
    #
    # This
    #
    #     UserMailer.should_receive(:hello).and_return something.deliver
    #
    # is same as
    #
    #     mail = double
    #     mail.should_receive :deliver
    #     UserMailer.should_receive(:hello).and_return mail
    #
    # To assert that the message won't be received, insert `won_t` like:
    #
    #    something.won_t.deliver
    #
    def something
      Rspec::Something::Proxy.new(double)
    end
  end
end
