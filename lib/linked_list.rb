require_relative "node"

class LinkedList
  attr_reader :head, :remaining_data, :current
  def initialize(head = nil)
    @head = head
    @count = 0
    @current = @head

  end
  def head_create(data)
    data = data.split[0]
    node = Node.new(data)
    @head = node
    @count += 1
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
   else
       add_node_not_head(data)
       @current = @current.next_node
   end
  #  add_node_not_head(data)


    # @current = data.split[0]


    # @count +=1
    @remaining_data = data.split[1..-1]

    @remaining_data.each do |x|
       @current.next_node = Node.new(x)
       @current = current.next_node
       @count += 1
      end

    end
   def prepend(data)

     temp = @head
     head_create(data)
     @current = @head
     @remaining_data = data.split[1..-1]
     @remaining_data.each do |x|
        @current.next_node = Node.new(x)
        @current = current.next_node
        @count += 1
       end

     old_data = to_string
     @current = @head
     @remaining_data = old_data.split[1..-1]
     @remaining_data.each do |x|
        @current.next_node = Node.new(x)
        @current = current.next_node
        @count += 1
       end

       @current.next_node = temp
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
    # retrieve data from @data for each node
    string << @current.data
    string.join(' ')
  end

end
