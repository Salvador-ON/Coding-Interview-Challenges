# Runtime: 108 ms
# Memory Usage: 9.9 MB

class MyCircularQueue

=begin
    Initialize your data structure here. Set the size of the queue to be k.
    :type k: Integer
=end
    def initialize(k)
      @queue_max_size = k
      @queue = []
    end


=begin
    Insert an element into the circular queue. Return true if the operation is successful.
    :type value: Integer
    :rtype: Boolean
=end
    def en_queue(value)
      if @queue.size < @queue_max_size
        @queue.push(value)
        true
      else
        false
      end
    end


=begin
    Delete an element from the circular queue. Return true if the operation is successful.
    :rtype: Boolean
=end
    def de_queue()
      if @queue.size > 0
        @queue.shift()
        true
      else
        false
      end
    end


=begin
    Get the front item from the queue.
    :rtype: Integer
=end
    def front()
      return @queue[0] if @queue.size > 0
      return -1 if @queue.size <= 0
    end


=begin
    Get the last item from the queue.
    :rtype: Integer
=end
    def rear()
      return @queue[-1] if @queue.size > 0
      return -1 if @queue.size <= 0
    end


=begin
    Checks whether the circular queue is empty or not.
    :rtype: Boolean
=end
    def is_empty()
      @queue.empty?
    end


=begin
    Checks whether the circular queue is full or not.
    :rtype: Boolean
=end
    def is_full()
      @queue.size == @queue_max_size
    end


end

# Your MyCircularQueue object will be instantiated and called as such:
# obj = MyCircularQueue.new(k)
# param_1 = obj.en_queue(value)
# param_2 = obj.de_queue()
# param_3 = obj.front()
# param_4 = obj.rear()
# param_5 = obj.is_empty()
# param_6 = obj.is_full()
