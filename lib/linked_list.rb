require_relative "node"

class LinkedList
  attr_reader :head
  def initialize(head = nil)
    @head = head
    @count = 0
  end
  def append(node)
    if @count == 0
      @head = node
      @count += 1
    elsif @count == 1
      @head.next_node = Node.new("deep")
      @count += 1
      # check if head has a next node, if nil
      # @head.next_node to a new instantiated node

    end
    # Notice the key point here -- the first piece
    # of data we append becomes the Head, while
    # the second becomes the Next Node of that (Head) node.

  end
  def count
    @count
  end
  def to_string(node)
    if @count == 1
    node.data
    else
  node.data + " " + node.next_node.data
    end
  end

end
