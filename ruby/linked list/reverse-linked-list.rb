# Runtime: 84 ms
# Memory Usage: 10.5 MB

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
