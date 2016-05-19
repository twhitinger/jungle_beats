require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require_relative '../lib/linked_list'
require_relative '../lib/node'
require_relative '../lib/jungle_beat'


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
    list.append(data)
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
    list.append("dunk the monkey")

    puts "----"
  end

  def test_list_append_convert_to_string

    list = LinkedList.new
    list.append("plop")
    list.to_string
    assert_equal "plop", list.head.data
    assert_equal "plop", list.to_string
  end

  def test_to_string_with_count

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
    list = LinkedList.new
    list.append("plop dope nope")
    list.append("suu")
    list.prepend("dop")
    list.insert(2, "woo")
    assert_equal "dop plop woo dope nope suu", list.to_string
    list.insert(0,"fuck this game")
    assert_equal "fuck this game dop plop woo dope nope suu", list.to_string
    list.insert(5, "this is a string")
    assert_equal "fuck this game dop plop this is a string woo dope nope suu", list.to_string
    list.insert(500, "whhops")
    assert_equal "Invalid insert", list.insert(500, "whhops")
  end

  def test_find

    list = LinkedList.new
    list.append("deep woo shi shu blop")
    list.find(2,1)
    list.find(1,3)

    assert_equal "shi", list.find(2,1)
    assert_equal "woo shi shu", list.find(1,3)
  end

  def test_includes?
    list = LinkedList.new
    list.append("deep woo shi shu blop")
    list.includes?("deep")
    list.includes?("dep")
    assert list.includes?("deep")
    refute list.includes?("dep")
  end

  def test_pop_returns_last_and_removes_from
    list = LinkedList.new
    list.append("deep woo shi shu blop")
    list.pop
    list.pop
    list.to_string
    assert_equal "deep woo shi", list.to_string
  end

  def test_JungleBeat_wrapper_append_access
    jb = JungleBeat.new
    jb.list
    jb.list.head
    assert_nil jb.list.head
    jb.append("deep doo ditt")
    assert_equal "deep doo ditt", jb.list.to_string
    assert_equal "deep", jb.list.head.data
    assert_equal "doo", jb.list.head.next_node.data
    jb.append("woo hoo shu")
    assert_equal "deep doo ditt woo hoo shu", jb.list.to_string

    assert_equal 6, jb.count
  end

  def test_speed_and_voice


  end
end
