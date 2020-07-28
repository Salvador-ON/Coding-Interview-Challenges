# Runtime: 32 ms, faster than 93.33% of Ruby online submissions for Same Tree.
# Memory Usage: 9.7 MB, less than 16.67% of Ruby online submissions for Same Tree.

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} p
# @param {TreeNode} q
# @return {Boolean}
def is_same_tree(p, q)
  arr1 = []
  arr2 = []

  def traverseTree(arr, node)
    arr.push node.val if node
    traverseTree(arr, node.left) if node && node.left
    traverseTree(arr, node.right) if node && node.right
    arr.push nil if node && !node.left && node.right
  end
  
  traverseTree(arr1, p)
  traverseTree(arr2, q)
  
  arr1.eql? arr2
end
