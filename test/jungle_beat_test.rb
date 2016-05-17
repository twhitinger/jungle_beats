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
      node = Node.new("doop")
      list.append(node)

      assert_equal "doop", list.head.data
  end
  def test_list_head_next_node_is_nil
    list = LinkedList.new
    node = Node.new("doop")
    list.append(node)
    assert_nil list.head.next_node
  end
  def test_list_count
    list = LinkedList.new
    node = Node.new("doop")
    list.append(node)
    list.count

    assert_equal 1 , list.count
  end
  def test_list_to_string
    list = LinkedList.new
    node = Node.new("doop")
    list.append(node)
    binding.pry
    list.to_string(node)

    assert_equal "doop", list.to_string(node)
 end

end
