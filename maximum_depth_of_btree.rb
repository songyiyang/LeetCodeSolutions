=begin
    Given a binary tree, find its maximum depth.

    The maximum depth is the number of nodes along the longest path from the root node down to the farthest leaf node.

    Definition for a binary tree node.
    class TreeNode
        attr_accessor :val, :left, :right
        def initialize(val)
            @val = val
            @left, @right = nil, nil
        end
    end
=end

# @param {TreeNode} root
# @return {Integer}
def max_depth(root)
    depth = 0
    if root.nil?
        return 0
    elsif root.left.nil? && root.right.nil?
        return 1
    elsif root.left && root.right.nil?
        depth += max_depth(root.left) + 1
    elsif root.right && root.left.nil?
        depth += max_depth(root.right) + 1
    else
        depth += [max_depth(root.left), max_depth(root.right)].max + 1
    end
    depth
end