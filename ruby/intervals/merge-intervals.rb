# @param {Integer[][]} intervals
# @return {Integer[][]}
def merge(intervals)
    intervals.sort!
    result  = Array.new
    result.push (intervals[0])
    return [] if intervals.empty?
    
    for i in 1..intervals.length-1
       if result.last[1] >= intervals[i][0]
           if result.last[1] < intervals[i][1]
              result.last[1] = intervals[i][1]  
           end
           
       else
           result.push(intervals[i])
       end
    
    end
    return result
end
