module Fibonacci
    class Fibonacci
        def self.seq_string(number)
            "fib(#{number}) = #{self.sequence(number).join(', ')}"
        end

        def self.sequence(number)
            (0..number).to_a.map { |n| self.fibonacci(n) }
        end

        def self.fibonacci(number)
            return 1 if number == 0 || number == 1
            self.fibonacci(number - 1) + self.fibonacci(number - 2)
        end
    end
end