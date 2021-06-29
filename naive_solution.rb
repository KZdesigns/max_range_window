require 'byebug'

def windowed_max_range(array, window_size)
    stack = nil
    current_range = 0
    max_range = 0
    
    (0...array.length).each do |i|
        range_end = i + window_size - 1
        return max_range if range_end > array.length
        stack = array[i..range_end]
        current_range = stack.max - stack.min
        current_range > max_range ? max_range = current_range : max_range
    end

    max_range
end


if __FILE__ == $PROGRAM_NAME
    p windowed_max_range([1, 0, 2, 5, 4, 8], 2) == 4 # 4, 8
    p windowed_max_range([1, 0, 2, 5, 4, 8], 3) == 5 # 0, 2, 5
    p windowed_max_range([1, 0, 2, 5, 4, 8], 4) == 6 # 2, 5, 4, 8
    p windowed_max_range([1, 3, 2, 5, 4, 8], 5) == 6 # 3, 2, 5, 4, 8
end