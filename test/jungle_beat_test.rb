require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require_relative '../lib/linked_list'
require_relative '../lib/node'


class JungleTest < Minitest::Test

  def test_node_data_equals_plop
      node = Node.new("plop")
      assert_equal "plop", node.data
  end

  def test_next_node_nil_for_last_node
      node = Node.new("plop")
      assert_nil node.next_node
  end

  def test_node_head_nil
      list = LinkedList.new
      assert_nil list.head
  end

  def test_append_sound
      list = LinkedList.new
      data = "doop"
      list.append(data)
      assert_equal "doop", list.head.data
  end

  def test_list_head_next_node_is_nil
    list = LinkedList.new
    data = "doop"
    list.append(data)
    assert_nil list.head.next_node
  end

  def test_list_count

    list = LinkedList.new
    data = "doop"
    list.append(data)
    list.count

    assert_equal 1 , list.count
  end
  def test_list_to_string

    list = LinkedList.new
    data = "doop"
    list.append(data)
    list.to_string

    assert_equal "doop", list.to_string
 end

 def test_list_append_multiple

   list = LinkedList.new
   data = "doop deep"

  #  node = Node.new("doop")
  #  next_node = Node.new("deep")
   list.append(data)
  #  list.append(next_node)


   assert_equal "doop deep", list.to_string
 end

 def test_list_prepend
   list = LinkedList.new
   list.head_create("dang")
   data = "dimp dumb dog blam"
   list.prepend(data)

  assert_equal "dimp dumb dog blam dang", list.to_string
 end

 def test_shit
   list = LinkedList.new
   list.append("dunk")
    binding.pry
    puts "----"
 end

end
