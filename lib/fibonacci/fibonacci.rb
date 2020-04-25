# This module encapsulates functionality related to the
# generation of Fibonacci sequences.
module Fibonacci
    # This class encapsulates functionality retalted to the
    # generation of Fibonacci sequences.
    class Fibonacci
        # Calculate the first _count_ Fibonacci numbers, starting with 1,1.
        #
        # :call-seq:
        #   Fibonacci.sequence(count) -> array
        #   Fibonacci.sequence(count) {|val| ... } -> nil
        #
        # If a block is given, supply successive values to the block and
        # return +nil+, otherwise return all values as an array.
        def self.sequence(count, &block)
            result, block = setup_optional_block(block)
            generate do |val|
                break if count <= 0
                count -= 1
                block[val]
            end
            result
        end

        # Calculate the Fibonacci numbers up to and including _max_.
        #
        # :call-seq:
        #   Fibonacci.upto(max) -> array
        #   Fibonacci.upto(max) {|val| ... } -> nil
        #
        # If a block is given, supply successive values to the
        # block and return +nil+, otherwise return all values as an array.
        def self.upto(max, &block)
            result, block = setup_optional_block(block)
            generate do |val|
                break if val > max
                block[val]
            end
            result
        end

        private

        # Yield a sequence of Fibonacci numbers to a block.
        def self.generate
            f1, f2 = 1, 1
            loop do
                yield f1
                f1, f2 = f2, f1 + f2
            end
        end

        # If a block parameter is given, use it, otherwise accumulate into an
        # array. Return the result value and the block to use.
        def self.setup_optional_block(block)
            if block.nil?
                [ result = [], lambda { |val| result << val } ]
            else
                [ nil, block ]
            end
        end
    end
end