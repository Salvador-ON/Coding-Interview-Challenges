# Runtime: 112 ms
# Memory Usage: 10.1 MB

# @param {Integer[][]} intervals
# @param {Integer[]} new_interval
# @return {Integer[][]}
def insert(intervals, new_interval)
  result = []
  new_intervals = [] if intervals
  new_intervals = [new_interval] if intervals.empty?
  new_interval_added = false
    
  def is_overlapping(a, b)
    return a[0] <= b[1] && b[0] <= a[1]  
  end
  
  def merge_interval(a, b)
    min = [a[0], b[0]].min
    max = [a[1], b[1]].max
    return [min, max]
  end
  
  intervals.each_with_index do |x, i|
    if x[0] < new_interval[0]
      new_intervals.push(x)
      new_intervals.push(new_interval) if i == intervals.size - 1
    else
      new_intervals.push(new_interval) if !new_interval_added
      new_intervals.push(x)
      new_interval_added = true
    end
  end
  
  i = 0
  while i < new_intervals.size - 1
    if i != new_intervals.size - 1 && is_overlapping(new_intervals[i], new_intervals[i+1])
      new_intervals[i] = merge_interval(new_intervals[i], new_intervals[i + 1])
      new_intervals.delete_at(i + 1)
      i = 0
    else
      i += 1
    end
  end
  
  new_intervals
end
