# Runtime: 60ms
# Memory: 11.2 mb

# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
  new_hash = Hash.new
  nums.each_with_index do |x|
    new_hash[x] = new_hash[x] += 1 if new_hash[x]
    new_hash[x] = 1 if !new_hash[x]
  end
  
  new_hash.key(1)
end
