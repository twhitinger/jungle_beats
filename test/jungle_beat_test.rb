require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/linked_list'
require_relative '../lib/node'


class JungleTest < Minitest::Test

  def test_node_data_equals_plop
      node = Node.new("plop")
      assert_equal "plop", node.data
  end

  def test_next_node_nil
    node = Node.new("plop")
      assert_nil node.next_node
  end
end
