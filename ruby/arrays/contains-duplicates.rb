# Runtime: 68 ms
# Memory Usage: 13.5 MB

# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
  duplicate_hash = Hash.new(0)
  
  nums.each do |x|
    duplicate_hash[x] += 1
    return true if duplicate_hash[x] > 1
  end
  
  false

  end
