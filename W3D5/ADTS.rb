class Stack
    attr_reader :arr
    def initialize
      @arr = []
    end

    def push(el)
      arr + [el]
    end

    def pop
        new_arr = []
        arr.each.with_index do |ele, i|
            if i != arr.length - 1
                new_arr << ele
            end
        end
        new_arr
    end

    def peek
      arr.last
    end

end

class Queue
    attr_reader :arr

    def initialize
        @arr = []
    end

    def enqueue(el)
        arr.push(el)
        el
    end
    
    def dequeue
        arr.shift
    end

    def peek
        arr.first
    end
end

class Map
    attr_reader :arr

    def initialize
        arr = []
    end

    def set(key, value)
        index = arr.index { |pair| arr[0] == key }
        if index 
            arr[index][1] = value
        else
            arr.push([key, value])
        end
        value
    end

    def get(key)
        arr.each { |pair| return pair[1] if pair[0] == key }
        nil
    end

    def delete(key)
        value = get(key)
        arr.reject! { |pair| pair[0] == key }
        value
    end

    def show
        
    end
end