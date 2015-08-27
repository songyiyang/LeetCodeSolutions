=begin
    Given a linked list, reverse the nodes of a linked list k at a time and return its modified list.

    If the number of nodes is not a multiple of k then left-out nodes in the end should remain as it is.

    You may not alter the values in the nodes, only nodes itself may be changed.

    Only constant memory is allowed.

    For example,
    Given this linked list: 1->2->3->4->5

    For k = 2, you should return: 2->1->4->3->5

    For k = 3, you should return: 3->2->1->4->5
=end

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @param {Integer} k
# @return {ListNode}
def reverse_k_group(head, k)
    next_head = nil
    start_head = head
    prev_head = nil
    return_head = head
    count = 0
    loop do
        if head.nil?
            if prev_head
                prev_head.next = start_head
            end
            break
        end
        count += 1
        if count % k == 0
            next_head = head.next
            if prev_head
                prev_head.next = head 
            else
                return_head = head
            end
            prev_head = reverse_head(start_head, head)
            start_head = next_head
            head = next_head
        else
            head = head.next
        end
    end
    return_head
end


def reverse_head(start_head, end_head)
    return start_head if start_head.next.nil?
    current_head = start_head
    prev_head = nil
    loop do
        next_head = current_head.next
        current_head.next = prev_head
        prev_head = current_head
        current_head = next_head
        break if prev_head == end_head
    end
    start_head
end
