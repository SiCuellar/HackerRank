require 'minitest/autorun'
require_relative 'program'

class ProgramTest < Minitest::Test
  def test_it_exists
    program = Program.new
    assert_instance_of Program, program
  end

  def test_it_can_convert_steps_to_array
    program = Program.new
    steps = "UDU"
    assert_equal ["U","D","U"], program.step_converter(steps)
  end

  def test_constraints_are_being_followed
    program = Program.new
    steps = "UDU"
    assert_equal true, program.constraint_checker(steps)
  end

  def test_it_can_convert_steps_to_ints
    program = Program.new
    steps = "UDU"
    assert_equal [1,-1,1], program.elevation_count(steps)
  end

  def test_it_can_count_valleys
    program = Program.new
    s = "UDDU"
    n = 4
    assert_equal 1, program.countingValleys(n,s)
  end
end
