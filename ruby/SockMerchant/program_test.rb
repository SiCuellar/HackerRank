require "minitest/autorun"
require "minitest/emoji"
require_relative "program"

class ProgramTest < Minitest::Test
  def test_it_exists
    program = Program.new
    assert_instance_of Program, program
  end

  def test_program_can_return_sock_count
    skip
    program = Program.new
    n = 3
    ar = [10,20,20]
    assert_equal 3, program.sockMerchant(n, ar)
  end

  def test_program_can_return_all_socks
    skip
    program = Program.new
    n = 3
    ar = [10,20,10]
    assert_equal [10,20,10], program.sockMerchant(n, ar)
  end

  def test_it_can_sort_sock_collection
    skip
    program = Program.new
    n = 3
    ar = [10,20,10]
    assert_equal [10,10,20], program.sockMerchant(n, ar)
  end

  def test_it_can_return_total_number_of_pairs
    program = Program.new
    n = 3
    ar = [10,20,10]
    assert_equal 1, program.sockMerchant(n, ar)
  end
end
