require_relative 'min_max_stack_queue'

def windowed_max_range(array, w)
    current_max_range = nil
    queue = MinMaxStackQueue.new

    array.each do |el|
        queue.enqueue(el)
        queue.dequeue if queue.size > w

        if queue.size == w
            current_range = queue.max - queue.min
            current_max_range = current_range if !current_max_range || current_range > current_max_range
        end
    end

    current_max_range
end


if __FILE__ == $PROGRAM_NAME
    p windowed_max_range([1, 0, 2, 5, 4, 8], 2) == 4 # 4, 8
    p windowed_max_range([1, 0, 2, 5, 4, 8], 3) == 5 # 0, 2, 5
    p windowed_max_range([1, 0, 2, 5, 4, 8], 4) == 6 # 2, 5, 4, 8
    p windowed_max_range([1, 3, 2, 5, 4, 8], 5) == 6 # 3, 2, 5, 4, 8
end