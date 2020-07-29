# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
    if nums.include?(target)
        nums.index(target)
    else
        return -1
    end
end
