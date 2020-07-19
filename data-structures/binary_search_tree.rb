# Definition for a binary tree node.
class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0, left = nil, right = nil)
      @val = val
      @left = left
      @right = right
  end
end

def insert_into_bst(root, val)
  return TreeNode.new(val) if root.nil?

  if val < root.val
      root.left = insert_into_bst(root.left, val)
  else
      root.right = insert_into_bst(root.right, val)
  end

  root
end

def binary_search(root, val)
  return false if root == nil

  if val == root.val
    return true
  elsif val < root.val
      binary_search(root.left, val)
  else
      binary_search(root.right, val)
  end
end


# TEST

# tree = TreeNode.new(10)               #=> {10:{}|{}}
# [5, 15, 3].each {|value| insert_into_bst(tree, value) } #=> {10:{5:{3:{}|{}}|{}}|{15:{}|{}}}
# puts binary_search(tree, 10) #=> true
# puts binary_search(tree, 15) #=> true
# puts binary_search(tree, 20) #=> false
# puts binary_search(tree, 3)  #=> true
# puts binary_search(tree, 2)
