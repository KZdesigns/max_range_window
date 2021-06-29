class MyQueue
    def initialize(store = [])
        @store = store
    end

    def peek
        @store.last
    end

    def size
        @store.size
    end

    def empty?
        @store.empty?
    end

    def enqueue(el)
        @store.push(el)
    end

    def dequeue
        @store.shift
    end
end

# queue = MyQueue.new
# queue.enqueue(1)
# queue.enqueue(2)
# queue.enqueue(3)
# queue.enqueue(4)
# p queue
# p queue.peek
# p queue.size
# p queue.empty?
# p queue.dequeue
# p queue
