# @param {Integer} n, a positive integer
# @return {Integer}
def reverse_bits(n)
     binary = n.to_s(2)
     full_binary = binary.rjust(32, '0')
     full_binary.reverse!
    return full_binary.to_i(2)
end
