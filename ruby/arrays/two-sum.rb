# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  arrayLength = nums.length-1
  nums.each_with_index do |num, index|
      for i in index+1..arrayLength
          if (num + nums[i]) == target
              return [index, i]
          end
      end
  end
end