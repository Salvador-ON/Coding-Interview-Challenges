# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def top_k_frequent(nums, k)
    occurance = Hash.new(0)
    nums.each do |num|
       occurance[num] += 1
    end
    
    array = Array.new
    
    while array.length < k
        occurance.each do |key, value| 
            if value == occurance.values.max and array.length < k
                array.push(key) 
                occurance[key] = 0
            end
        end
        
    end
    
   
    
   return array 
    
    
end
