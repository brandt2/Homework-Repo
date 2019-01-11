# Exercise 1 - Stack
class Stack
    def initialize
        @stack_array = []
    end

    def push(el)
        @stack_array << el
    end

    def pop
        @stack_array.pop
    end

    def peek
        @stack_array[-1]
    end
end

# Exercise 2 - Queue
class Queue
    def initialize
        @queue_array = []
    end
    
    def enqueue(el)
        @queue_array.push(el)
    end

    def dequeue
        @queue_array.shift
    end

    def peek
        @queue_array[0]
    end
end

# Exercise 3 - Map
class Map
    def initialize
        @map_array = []
    end

    def set(key, value)
        pair_idx = @map_array.index { |pair| pair[0] == key }
        if pair_idx
            @map_array[pair_idx][1] = value
        else
            @map_array << [key, value]
        end
        key
    end

    def get(key)
        pair_idx = @map_array.index { |pair| pair[0] == key }
        @map_array[pair_idx][1]
    end

    def delete(key)
        pair_idx = @map_array.index { |pair| pair[0] == key}
        @map_array.delete_at(pair_idx)
    end

    def show
        @map_array
    end
end