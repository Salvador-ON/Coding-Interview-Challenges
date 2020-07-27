# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}


# Solution 1:
# Runtime: 36 ms
# Memory Usage: 10.1 MB
def reverse_list(head)
  return [] if !head
  return head if !head.next
  
  @first_node = head
  @last_node = nil

  def reverse_link(node)
    reverse_link(node.next) if node.next
    node.next.next = node if node.next
    @last_node = node.next if node.next && @last_node.nil?
  end
  
  reverse_link(head)
  @first_node.next = nil

  @last_node
end

# Solution 2:
# Runtime: 84 ms
# Memory Usage: 10.5 MB
def reverse_list(head)
  @arr = []
  
  def populateArr(head)
    next_node = head
    while next_node
      @arr.push(next_node)
      next_node = next_node.next
    end
  end
  
  def reverseListArr(arr)
    arr.each_with_index do |x, i|
      break if i == (arr.size/2).round(half: :up)
      arr[i], arr[arr.size - (i + 1)] = arr[arr.size - (i + 1)], arr[i]
    end
    
    return arr
  end
  
  populateArr(head)
  
  reverse_arr = reverseListArr(@arr)
  reverse_arr.each_with_index do |x, i|
    # puts "#{x.val} vs: #{reverse_arr[i + 1].val}" if reverse_arr[i + 1]
    x.next = reverse_arr[i + 1] if reverse_arr[i + 1]
    x.next = nil if !reverse_arr[i + 1]
  end
  
  reverse_arr[0]
end
