# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @param {Integer} k
# @return {Integer}
def kth_smallest(root, k)
    result=[]
    return result unless root
    stack = []
    current_node = root
    while (!stack.empty? || current_node !=nil)
        while current_node !=nil
            stack.push(current_node)
            current_node = current_node.left
        end
        current_node = stack.pop
        result.push(current_node.val)
        current_node = current_node.right
    end
    return result[k-1]
    
end
