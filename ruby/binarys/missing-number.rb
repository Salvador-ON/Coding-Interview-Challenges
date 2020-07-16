# @param {Integer[]} nums
# @return {Integer}
def missing_number(nums)
  possible_missing_number =  nums.flat_map {|e| [e-1 , e+1]}.uniq
  substractionArrays = possible_missing_number - nums
  possible_result = substractionArrays.select {|num| num >= 0}
  return possible_result.min
end