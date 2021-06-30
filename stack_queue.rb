require_relative 'my_stack'

class StackQueue
    def initialize
       @in_store = MyStack.new
       @out_store = MyStack.new
    end

    def size
       @in_store.size + @out_store.size
    end

    def empty?
        @in_store.empty? && @out_store.empty?
    end

    def enqueue(el)
        @in_store.push(el)
    end

    def dequeue
        self.queify unless @in_store.empty?
        @out_store.pop
    end

    private

    def queify
        @out_store.push(@in_store.pop) until @in_store.empty?
    end
end