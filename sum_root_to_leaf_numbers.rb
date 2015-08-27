=begin
    Given a binary tree containing digits from 0-9 only, each root-to-leaf path could represent a number.

    An example is the root-to-leaf path 1->2->3 which represents the number 123.

    Find the total sum of all root-to-leaf numbers.

    For example,

        1
       / \
      2   3
    The root-to-leaf path 1->2 represents the number 12.
    The root-to-leaf path 1->3 represents the number 13.

    Return the sum = 12 + 13 = 25.
=end

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer}
def sum_numbers(root)
    return 0 if root.nil?
    array = []
    sum(root, array)
    array.inject(&:+)
end

def sum(root, array)
    if root.left.nil? && root.right.nil?
       array << root.val
    else
        if root.left
            root.left.val = (root.val.to_s + root.left.val.to_s).to_i
            sum(root.left, array)
        end
        if root.right
            root.right.val = (root.val.to_s + root.right.val.to_s).to_i
            sum(root.right, array)
        end
    end

end
