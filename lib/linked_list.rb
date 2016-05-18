require_relative "node"

class LinkedList
  attr_accessor :head, :current
  def initialize(head = nil)
    @head = head
  end

  def head_create(data)
    data = data.split[0]
    node = Node.new(data)
    @head = node
  end

  def add_node_not_head(data)
    data = data.split[0]
    current = head
    until current.next_node == nil
      current = current.next_node
    end
    current.next_node = Node.new(data)
  end

  def append(data)
    if head == nil
      head_create(data)
      @current = head
    else
      add_node_not_head(data)
      @current = current.next_node
    end
    loop_append_prepend(data)
  end

  def prepend(data)
    temp = head
    head_create(data)
    @current = head
    loop_append_prepend(data)
    old_data = to_string
    @current = head
    loop_append_prepend(old_data)
    @current.next_node = temp
  end

  def loop_append_prepend(data)
    remaining_data = data.split[1..-1]
    remaining_data.each { |x| @current.next_node = Node.new(x); @current = current.next_node }
  end

  def loop_insert(data)
    remaining_data = data.split[0..-1]
    remaining_data.each { |x| @current.next_node = Node.new(x); @current = current.next_node }
  end

  def insert(num, data)
    if num == 0
      prepend(data)
    elsif num == count
      append(data)
    elsif num > count
      "Invalid insert"
    else
      @current = head
      num = num - 1
      1.upto(num) { @current = current.next_node }
      temp = current.next_node
      loop_insert(data)
      current.next_node = temp
    end
  end

  def find(index,addition)
    if addition < 0
    end_range = 0
    puts "negative words can't be returned"
    else
    addition == 1 ? end_range = index : end_range = index + addition - 1
    end
    to_string.split[index..end_range].join(' ')
  end

  def includes?(str)
    return "Oops no items" if head == nil
    current = head
    while current
      return true if str == current.data
      current = current.next_node
    end
  end

  def pop
    if head == nil
       "Oops no items"
    elsif @head.next_node == nil
      temp = head.data
      @head = nil
      temp
    else
    current = head
    while current.next_node.next_node
      current = current.next_node
    end
    temp = current.next_node.data
    current.next_node = nil
    temp
  end

  end

  def count
    current = @head
    count = 1
    while current.next_node
      current = current.next_node
      count += 1
    end
    count
  end

  def to_string
    sounds = []
    current = head
    while current.next_node
      sounds << current.data
      current = current.next_node
    end
    sounds << current.data
    sounds.join(' ')
  end
end
