module Rspec
  module Something
    class Proxy

      def initialize(_double)
        @_won_t = false
        @double = _double
      end

      # set expectation to double at first method invocation
      # and return double itself.
      #
      def method_missing(name, *args)
        receive = RSpec::Mocks::Matchers::Receive.new(name, nil)
        receive.with(*args) unless args.empty?

        target = RSpec::Mocks::ExpectationTarget.new(@double)
        if should_be_received?
          target.to(receive)
        else
          target.not_to(receive)
        end

        @double
      end

      def won_t
        @_won_t = true
        self
      end

      private

      def should_be_received?
        !@_won_t
      end
    end
  end
end
