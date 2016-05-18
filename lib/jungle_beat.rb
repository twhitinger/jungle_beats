require_relative 'linked_list'

class JungleBeat
attr_reader :list
  def initialize
    @list = LinkedList.new
  end

  def append(data)
    list.append(data)
  end

  def play
    beats = list.to_string
    `say -r 500 -v Boing #{beats}`
  end
end
