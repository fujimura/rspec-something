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
        (should_be_received? ? @double.should_receive(name) : @double.should_not_receive(name))
        .tap {|o| o.with(*args) unless args.empty? }

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
