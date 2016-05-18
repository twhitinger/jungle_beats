require_relative 'linked_list'

class JungleBeat
attr_reader :list
attr_accessor :rate, :voice
  def initialize
    @list = LinkedList.new
    @rate = 500
    @voice = "Boing"
  end

  def append(data)
    list.append(data)
  end

  def count
    list.count
  end

  def play
    beats = list.to_string
    `say -r #{rate} -v #{voice} #{beats}`
  end

  def reset_rate
    @rate = 500
  end

  def reset_voice
    @voice = "Boing"
  end

end
