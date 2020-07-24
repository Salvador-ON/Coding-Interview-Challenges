class RecentCounter
    def initialize()
        @pings_array = Array.new
    end


=begin
    :type t: Integer
    :rtype: Integer
=end
    def ping(t)
        @pings_array.push(t)
        
        while @pings_array[0] < (t - 3000)
            @pings_array.shift
        end
        return @pings_array.length
        
    end


end

# Your RecentCounter object will be instantiated and called as such:
# obj = RecentCounter.new()
# param_1 = obj.ping(t)
