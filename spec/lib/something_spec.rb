require 'spec_helper'

class Mailer
  def deliver; end
end

describe "Something" do

  it "should assert receive message" do
    Mailer.should_receive(:new).and_return something.deliver
    Mailer.new.deliver
  end

  it "should assert receive message with args" do
    Mailer.should_receive(:new).and_return something.register(true)
    Mailer.new.register(true)
  end

  it "should assert receive message with given args" do
    Mailer.should_receive(:new).and_return something.won_t.register(false)
    Mailer.new.register(true)
  end

  it "should assert won't receive message with #won_t" do
    Mailer.should_receive(:new).and_return something.won_t.deliver
    Mailer.new
  end
end
