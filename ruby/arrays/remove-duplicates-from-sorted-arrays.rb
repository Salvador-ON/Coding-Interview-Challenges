# Solutions ordered by runtime speed provided by leetcode.com, fastest first, slowest last.

# Solution 1 - by removing puts speed is increased by 28 ms
# Runtime: 60 ms
# Memory: 10.6 MB

# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  newArray = []
  last_num = nil
  nums.each_with_index do |x, i|
    newArray.push(x) if (x != last_num)
    last_num = x
  end
  nums.clear
  nums.concat(newArray)
  nums.length
end

# Solution 2
# Runtime: 88 ms
# Memory: 10.5 MB

# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  newArray = []
  last_num = nil
  nums.each_with_index do |x, i|
    newArray.push(x) if (x != last_num)
    last_num = x
  end
  nums.clear
  nums.concat(newArray)
  puts nums.length
end

# Solution 3 - by removing puts speed is increased by 12 ms
# Runtime: 88 ms
# Memory: 10.8 MB

# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
    nums.uniq!
    nums.length
end

# Solution 4
# Runtime: 100 ms
# Memory: 10.8 MB

# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
    nums.uniq!
    puts nums.length
end
