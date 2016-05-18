require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require_relative '../lib/linked_list'
require_relative '../lib/node'


class JungleTest < Minitest::Test

  def test_node_data_equals_plop
    skip
    node = Node.new("plop")
    assert_equal "plop", node.data
  end

  def test_next_node_nil_for_last_node
    skip
    node = Node.new("plop")
    assert_nil node.next_node
  end

  def test_node_head_nil
    skip
    list = LinkedList.new
    assert_nil list.head
  end

  def test_append_sound
    skip
    list = LinkedList.new
    data = "doop"
    list.append(data)
    assert_equal "doop", list.head.data
  end

  def test_list_head_next_node_is_nil
    skip
    list = LinkedList.new
    data = "doop"
    list.append(data)
    assert_nil list.head.next_node
  end

  def test_list_count
    skip
    list = LinkedList.new
    data = "doop"
    list.append(data)
    list.count

    assert_equal 1 , list.count
  end

  def test_list_to_string
    skip
    list = LinkedList.new
    data = "doop"
    list.append(data)
    list.to_string
    assert_equal "doop", list.to_string
  end

  def test_list_append_multiple
    skip
    list = LinkedList.new
    data = "doop deep"
    list.append(data)
    assert_equal "doop deep", list.to_string
  end

  def test_list_prepend
    skip
    list = LinkedList.new
    list.head_create("dang")
    data = "dimp dumb dog blam"
    list.prepend(data)
    assert_equal "dimp dumb dog blam dang", list.to_string
  end

  def test_shit
    skip
    list = LinkedList.new
    list.append("dunk the monkey")
    binding.pry
    puts "----"
  end

  def test_list_append_convert_to_string
    skip
    list = LinkedList.new
    list.append("plop")
    list.to_string
    assert_equal "plop", list.head.data
    assert_equal "plop", list.to_string
  end

  def test_to_string_with_count
    skip
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    list.to_string
    list.count
    assert_equal "dop plop suu", list.to_string
    assert_equal 3, list.count
  end

  def test_insert_to_string
    skip
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    list.insert(1, "woo")
    list.to_string
    assert_equal "dop woo plop suu", list.to_string
  end

  def test_find
    skip
    list = LinkedList.new
    list.append("deep woo shi shu blop")
    list.find(2,1)
    list.find(1,3)
    binding.pry
    assert_equal "shi", list.find(2,1)
    assert_equal "woo shi shu", list.find(1,3)
  end
end
