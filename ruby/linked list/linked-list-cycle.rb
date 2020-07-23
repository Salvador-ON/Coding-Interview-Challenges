# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {Boolean}
def hasCycle(head)
    
    node1 = node2 = head
    
    until node2.nil? || node2.next.nil?
        if (node1=node1.next) == (node2=node2.next.next)
            return true
        end
    end
    
    return false
end
