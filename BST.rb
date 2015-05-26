# pg 398 of Algo 4th Edition


class BST
  def initialize
    @root = nil
  end

  class Node
    attr_reader :key
    attr_accessor :value, :left, :right, :node_count

    def initialize(key, value, node_count)
      @key = key
      @value = value
      @left = nil
      @right = nil
      @node_count = node_count
    end
  end

  def tree_size
    size(@root)
  end

  def size(node)
    return 0 unless node
    node.node_count
  end

  def get(key)
    get_helper(@root, key)
  end

  def put(key, value)
    @root = put_helper(@root, key, value)
  end

  private

  def get_helper(node, key)
    return nil unless node
    if key < node.key
      get_helper(node.left, key)
    elsif key > node.key
      get_helper(node.right, key)
    else
      node.value
    end
  end

  def put_helper(node, key, value)
    return Node.new(key, value, 1) unless node
    if key < node.key
      node.left = put_helper(node.left, key, value)
    elsif key > node.key
      node.right = put_helper(node.right, key, value)
    else
      node.value = value
    end
    node.node_count = size(node.left) + size(node.right) + 1;
    p "Hello"
    return node
  end
end
