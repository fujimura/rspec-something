require 'spec_helper'

class Mailer
  def deliver; end
end

describe "Something" do

  it "should assert that the message was received" do
    Mailer.should_receive(:new).and_return something.deliver
    Mailer.new.deliver
  end

  it "should assert that the message was received with given args" do
    Mailer.should_receive(:new).and_return something.register(true)
    Mailer.new.register(true)
  end

  it "should assert that the message wasn't received" do
    Mailer.should_receive(:new).and_return something.won_t.deliver
    Mailer.new
  end

  it "should assert that the message wasn't received with given args" do
    Mailer.should_receive(:new).and_return something.won_t.register(false)
    Mailer.new.register(true)
  end
end
