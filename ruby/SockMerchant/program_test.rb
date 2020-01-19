require "minitest/autorun"
require "minitest/emoji"
require_relative "program"

class ProgramTest < Minitest::Test
  def test_it_exists
    program = Program.new
    assert_instance_of Program, program
  end

  def test_program_input_format
    program = Program.new
    n = 3
    ar = [10,20,20]
    assert_equal [10,20,20], program.sockMerchant(n, ar)
  end
end
