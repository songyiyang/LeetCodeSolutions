=begin
    You are climbing a stair case. It takes n steps to reach to the top.

    Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?
=end

# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
    fast_fib(n+1)
end

# horrible solution!
def fib(n)
    if n == 0
        return 0
    elsif n == 1
        return 1
    else
        return fib(n-1) + fib(n-2)
    end
end

# best solution! O(n) && O(1)
def fast_fib(n)
    n0, n1, sum = 0, 1, 0
    (n+1).times do |i|
        if i == 0
            sum = 0
        elsif i == 1
            sum = 1
        else
            sum = n0 + n1
            n0 = n1
            n1 = sum
        end
    end
    sum
end


class BTree
    attr_accessor :val, :left, :right
    def initialize(val)
        @val = val
        @left = nil
        @right = nil
    end
    
    # this function is horrible!
    def get_tree(n)
        if n >= 2
            self.left = BTree.new(1)
            self.left.get_tree(n-1)
            self.right = BTree.new(2)
            self.right.get_tree(n-2)
        elsif n == 1
            self.left = BTree.new(1)
        end
        nil
    end
    
    def count_path(count = 0)
        # check if it's leaf node
        if self.left.nil? && self.right.nil?
            count += 1
        else
            if self.left && self.right
                count += self.left.count_path(count) + self.right.count_path(count)
            elsif self.left
                count += self.left.count_path(count)
            elsif self.right
                count += self.right.count_path(count)
            end
        end
        count
    end

    def print_path(path = "", is_root = true)
        
        if is_root
            path = "#{self.val}"
        else
            path = path + " => #{self.val}"
        end
        # check if it's leaf node
        if self.left.nil? && self.right.nil?
            print path + "\n"
        else
            if self.left && self.right
                self.left.print_path(path, false)
                self.right.print_path(path, false)
            elsif self.left
                self.left.print_path(path, false)
            elsif self.right
                self.right.print_path(path, false)
            end
        end
        nil
    end
end

# n = 5 # horrible!
# root = BTree.new(0)
# root.get_tree(n)
# root.print_path()
# root.count_path()
