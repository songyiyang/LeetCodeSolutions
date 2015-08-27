=begin
    Implement the following operations of a queue using stacks.

    push(x) -- Push element x to the back of queue.
    pop() -- Removes the element from in front of queue.
    peek() -- Get the front element.
    empty() -- Return whether the queue is empty.
    Notes:
    You must use only standard operations of a stack -- which means only push to top, peek/pop from top, size, and is empty operations are valid.
    Depending on your language, stack may not be supported natively. You may simulate a stack by using a list or deque (double-ended queue), as long as you use only standard operations of a stack.
    You may assume that all operations are valid (for example, no pop or peek operations will be called on an empty queue).
=end

class Queue
    # Initialize your data structure here.
    def initialize
        @stack1 = Array.new
        @stack2 = Array.new
    end

    # @param {Integer} x
    # @return {void}
    def push(x)
        while @stack1.any? do
            @stack2.push(@stack1.pop)
        end
        @stack1.push(x)
        while @stack2.any? do
            @stack1.push(@stack2.pop)
        end
    end

    # @return {void}
    def pop
        @stack1.pop
    end

    # @return {Integer}
    def peek
        @stack1.last
    end

    # @return {Boolean}
    def empty
        @stack1.empty?
    end
end
