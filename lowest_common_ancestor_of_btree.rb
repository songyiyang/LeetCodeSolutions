=begin
    Given a binary search tree (BST), find the lowest common ancestor (LCA) of two given nodes in the BST.

    According to the definition of LCA on Wikipedia: “The lowest common ancestor is defined between two nodes v and w as the lowest node in T that has both v and w as descendants (where we allow a node to be a descendant of itself).”

            _______6______
           /              \
        ___2__          ___8__
       /      \        /      \
       0      _4       7       9
             /  \
             3   5
    For example, the lowest common ancestor (LCA) of nodes 2 and 8 is 6. Another example is LCA of nodes 2 and 4 is 2, since a node can be a descendant of itself according to the LCA definition.


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
# @param {TreeNode} p
# @param {TreeNode} q
# @return {TreeNode}
def lowest_common_ancestor(root, p, q)
    p_lowest_ancestor = p.lowest_ancestor(root) || p
    q_lowest_ancestor = q.lowest_ancestor(root) || q
    if p.is_descendant? q
        return q
    elsif q.is_descendant? p
        return p
    elsif q == p_lowest_ancestor
        return q
    elsif p == q_lowest_ancestor
        return p
    elsif q.is_descendant? p_lowest_ancestor
        return p_lowest_ancestor
    elsif p.is_descendant? q_lowest_ancestor
        return q_lowest_ancestor
    else
        lowest_common_ancestor(root, p_lowest_ancestor, q_lowest_ancestor)
    end
end

class TreeNode
    def is_descendant? (node)
        if node
            return (node == self) || (node.left == self) || (node.right == self) || self.is_descendant?(node.left) || self.is_descendant?(node.right)
        else
            return false
        end
    end
    def lowest_ancestor(root)
        if root && (self == root.left || self == root.right)
            root
        elsif self.is_descendant? root
            self.lowest_ancestor(root.left) || self.lowest_ancestor(root.right)
        else
            nil
        end
    end
end