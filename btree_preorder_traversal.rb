=begin
    Given a binary tree, return the preorder traversal of its nodes' values.

    For example:
    Given binary tree {1,#,2,3},
       1
        \
         2
        /
       3
    return [1,2,3].

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
# @return {Integer[]}
def preorder_traversal(root)
    res = []
    if root.nil?
        return res
    elsif root.left.nil? && root.right.nil?
       res << root.val
    elsif root.right.nil? && root.left
        res = res + [root.val] + preorder_traversal(root.left)
    elsif root.left.nil? && root.right
        res = res + [root.val] + preorder_traversal(root.right)
    else
        res = [root.val] + preorder_traversal(root.left) + preorder_traversal(root.right)
    end
    res
end