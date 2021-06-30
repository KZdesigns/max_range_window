require_relative 'min_max_stack'

class MinMaxStackQueue
    def initialize
        @in_store = MinMaxStack.new
        @out_store = MinMaxStack.new
    end

    def size
        @in_store.size + @out_store.size
    end

    def empty?
        @in_store.empty? && @out_store.empty?
    end

    def max
        maxes = []
        maxes << @in_store.max unless @in_store.empty?
        maxes << @out_store.max unless @out_store.empty?
        maxes.max
    end

    def min 
        mins = []
        mins << @in_store.min unless @in_store.empty?
        mins << @out_store.min unless @out_store.empty?
        mins.min
    end

    def enqueue(el)
        @in_store.push(el)
    end

    def dequeue
        queify if @out_store.empty?
        @out_store.pop
    end

    private

    def queify
        @out_store.push(@in_store.pop) until @in_store.empty?
    end
end