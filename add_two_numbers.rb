=begin
    You are given two linked lists representing two non-negative numbers. The digits are stored in reverse order and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.

    Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
    Output: 7 -> 0 -> 8
=end

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def check_if_exceed(val, l)
    if val >= 10
        val = val - 10
        if l.next
            l.next.val = l.next.val + 1
        else
            l.next = ListNode.new(1)
        end
    end
    val
end

def add_two_numbers(l1, l2)
    if l1 && l2
        val = check_if_exceed((l1.val + l2.val), l1)
        l3 = ListNode.new(val)
        l3.next = add_two_numbers(l1.next, l2.next)
        l3
    elsif l1
        val = check_if_exceed(l1.val, l1)
        l3 = ListNode.new(val)
        l3.next = add_two_numbers(l1.next, nil)
        l3
    elsif l2
        val = check_if_exceed(l2.val, l2)
        l3 = ListNode.new(val)
        l3.next = add_two_numbers(nil, l2.next)
        l3
    else
        nil
    end
end


