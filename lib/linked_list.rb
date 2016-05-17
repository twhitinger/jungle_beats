require_relative "node"

class LinkedList
  attr_reader :head
  def initialize
    @head = nil
    @count = 0
  end
  def append(node)
    @head = node
  end
  def count
    @count = 1
  end
  def to_string(node)
    node.data
  end
end
