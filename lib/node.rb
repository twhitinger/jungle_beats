class Node
  def initialize(sound)
    @data1 = sound
    @data2 = nil
  end

  def data
    @data1
  end

  def next_node
    @data2
  end
  
end
