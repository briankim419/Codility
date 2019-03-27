require 'pry'

class BinaryTreeNode
  attr_accessor :value
  attr_reader :left, :right

  def initialize(value)
    @value = value
    @left  = nil
    @right = nil
  end

  def insert_left(value)
    @left = BinaryTreeNode.new(value)
  end

  def insert_right(value)
    @right = BinaryTreeNode.new(value)
  end
end

def binary_search_tree? (root)

  node_and_bounds_stack = []
  node_and_bounds_stack << [root, -Float::INFINITY, Float::INFINITY]

  until node_and_bounds_stack.empty?
    node, lower_bound, upper_bound = node_and_bounds_stack.pop
    binding.pry

   return false if node.value <= lower_bound || node.value >= upper_bound

    node_and_bounds_stack << [node.left, lower_bound, node.value] if node.left

    node_and_bounds_stack << [node.right, node.value, upper_bound] if node.right
  end
  puts "true"
  true
end

def binary_search_tree_recursive?(root, lower_bound = -Float::INFINITY, upper_bound = Float::INFINITY)

  if !root
    true
  elsif root.value >= upper_bound || root.value <= lower_bound
    false
  else
    binary_search_tree_recursive?(root.left, lower_bound, root.value) && binary_search_tree_recursive(root.right, root.value, upper_bound)
  end
end

def balanced?(tree_root)

  return true unless tree_root

  depths = []

  nodes = []
  nodes << [tree_root, 0]

  until nodes.empty?
    node, depth = nodes.pop
    if !node.left && !node.right
      unless depths.include?(depth)
        depths.push(depth)

        if depths.length > 2 || depths.lenggth == 2 && (depths[0] - depths[1]).abs > 1
          return false
        end
      end
    else
      nodes << [node.left, depth + 1] if node.left
      nodes << [node.right, depth + 1] if node.right
    end
    true
  end
end

def inorder_print(node)
  if node
    inorder_print(node.left)
    print node.value
    inorder_print(node.right)
  end
end

def find_largest(root_node)
  if !root_node
    raise 'Tree must have at least 1 node'
  elsif root_node.right
    find_largest(root_node.right)
  else
    puts root_node.value
  end
end

def find_largest2(root_node)
  current = root_node
  while current
    return current.value unless current.right
    current = current.right
  end
end

def find_second_largest(root_node)
  if !root_node || (!root_node.left && !root_node.right)
    raise 'Tree must have at least 2 nodes'
  end

  current = root_node

  while current
    if current.left && !current.right
      find_largest(current.left)
    elsif current.right && !current.right.left && !current.right.right
      return current.value
    end

    current = current.right
  end
end

tree = BinaryTreeNode.new(50)
tree.insert_left(30)
tree.insert_right(80)
tree.left.insert_left(20)
tree.left.insert_right(40)
tree.right.insert_left(70)
tree.right.insert_right(90)
# binary_search_tree?(tree)

# inorder_print(tree)
find_largest(tree)
