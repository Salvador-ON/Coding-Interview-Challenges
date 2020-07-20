def contains_duplicate(nums)
  elements = Hash.new(0)
  nums.each do |num|
      elements[num] += 1
  end
 duplicateElement = elements.select {|k, v| v > 1} 
 if duplicateElement.keys.length >= 1
     return true
 else
     return false
 end
end