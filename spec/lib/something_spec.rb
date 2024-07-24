require 'spec_helper'

class Mailer; end

describe "#something" do
  it "should assert that the message was received" do
    expect(Mailer).to receive(:new).and_return something.deliver

    Mailer.new.deliver
  end

  it "should assert that the message was received with given args" do
    expect(Mailer).to receive(:new).and_return something.register(true)

    Mailer.new.register(true)
  end

  it "should assert that the message wasn't received" do
    expect(Mailer).to receive(:new).and_return something.won_t.deliver

    expect { Mailer.new.deliver }.to raise_mock_expectation_error(/received: 1 time/)
  end

  it "should assert that the message wasn't received with given args" do
    expect(Mailer).to receive(:new).and_return something.register(false)

    expect { Mailer.new.register(true) }.to raise_mock_expectation_error(/received :register with unexpected arguments/)
  end
end