require_relative "node"

class LinkedList
  attr_reader :head, :remaining_data, :current
  def initialize(head = nil)
    @head = head
    @current = @head
  end

  def head_create(data)
    data = data.split[0]
    node = Node.new(data)
    @head = node
  end

  def add_node_not_head(data)
    data = data.split[0]
    # go to the last node and add it to next node
    @current = @head
    until @current.next_node == nil
      @current = @current.next_node
    end
    @current.next_node = Node.new(data)
  end

  def append(data)
    if @head == nil
      head_create(data)
      @current = @head
    else
      add_node_not_head(data)
      @current = @current.next_node
    end

    remaining_data = data.split[1..-1]
    remaining_data.each do |x|
      @current.next_node = Node.new(x)
      @current = current.next_node
    end
  end


  def prepend(data)
    temp = @head
    head_create(data)
    @current = @head
    remaining_data = data.split[1..-1]
    remaining_data.each do |x|
      @current.next_node = Node.new(x)
      @current = current.next_node
    end

    old_data = to_string
    @current = @head
    remaining_data = old_data.split[1..-1]
    remaining_data.each do |x|
      @current.next_node = Node.new(x)
      @current = current.next_node
    end
    @current.next_node = temp
  end

  def insert(index, data)
    new_data = to_string.split.insert(index, data).join(' ')
    @head = nil
    prepend(new_data)
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
    to_string.split.include?(str)
  end

  def pop
    last_item = to_string.split.pop
    new_data = to_string.split
    new_data.delete(last_item)
    @head = nil
    append(new_data.join(' '))
    last_item
  end

  def count
    to_string.split.count
  end

  def to_string
    string = []
    @current = @head
    while @current.next_node != nil
      string << @current.data
      @current = @current.next_node
    end

    string << @current.data
    string.join(' ')
  end

end
