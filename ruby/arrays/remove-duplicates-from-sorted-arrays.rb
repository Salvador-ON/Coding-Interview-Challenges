# Solutions ordered by runtime speed provided by leetcode.com, fastest first, slowest last.

# Solution 1
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


# Solution 2
# Runtime: 100 ms
# Memory: 10.8 MB

# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
    nums.uniq!
    puts nums.length
end
