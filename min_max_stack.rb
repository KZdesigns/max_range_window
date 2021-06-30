require_relative 'my_stack'

class MinMaxStack
    def initialize
        @store = MyStack.new
    end

    def peek
        @store.peek[:value] unless empty?
    end

    def size
        @store.size
    end

    def empty?
        @store.empty?
    end

    def max
        @store.peek[:max] unless empty?
    end

    def min
        @store.peek[:min] unless empty?
    end

    def pop
        @store.pop[:value] unless empty?
    end

    def push(el)
       @store.push({
           max: max_value(el),
           min: min_value(el),
           value: el
       }) 
    end

    private

    def max_value(el)
        empty? ? el : [max, el].max
    end

    def min_value(el)
       empty? ? el : [min, el].min
    end
end