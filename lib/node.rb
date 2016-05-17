class Node
  attr_accessor :data, :next_node
  def initialize(sound, next_node = nil)
    @data = sound
    @next_node = next_node
  end
end


# if data != newdata
