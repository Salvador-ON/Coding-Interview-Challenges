# Runtime: 500 ms
# Memory Usage: 22 MB

# @param {Integer} num
# @return {Integer[]}
def count_bits(num)
  return [0] if num == 0 || !num
  
  result = Array.new(1, 0)
  def binaryArray(num)
    binary_arr = []
    for i in 0..num
      binary_arr.push(i.to_s(2))
    end
    return binary_arr
  end
  
  def binaryHash(num)
    binary_hash = Hash.new(0)
    binary_arr = binaryArray(num)
    binary_arr.each_with_index do |x, index|
      for i in 0..x.size
        binary_hash[index] += 1 if x[i] == "1"
      end
    end
    return binary_hash
  end
  
  binary_hash = binaryHash(num)
  binary_hash.each_value do |x|
    result.push(x)
  end
  
  result
end
