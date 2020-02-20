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
end
