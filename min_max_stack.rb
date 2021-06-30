require_relative 'my_stack'

class MinMaxStack
    def initialize
        @store = MyStack.new
    end

    def peek
        @store.peek
    end

    def size
        @store.size
    end

    def empty?
        @store.empty?
    end

    def max
        @store.peek[:max]
    end

    def min
        @store.peek[:min]
    end

    def pop
        @store.pop
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
        return el if @store.empty?
        @store.peek[:max] < el ? el : @store.peek[:max]
    end

    def min_value(el)
        return el if @store.empty?
        @store.peek[:min] > el ? el : @store.peek[:min]
    end
end