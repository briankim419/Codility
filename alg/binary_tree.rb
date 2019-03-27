require 'pry'

class TreeNode
  attr_accessor :value, :left, :right

  def initialize(value)
    @value = value
  end
end

def find_node(node, value)
  return false unless node
  return true if node.value == value

  find_node(node.left, value) || find_node(node.right, value)
end




tree = TreeNode.new(5)
tree.left = TreeNode.new(3)
tree.right = TreeNode.new(8)
