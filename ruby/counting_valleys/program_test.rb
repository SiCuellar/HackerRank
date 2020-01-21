require 'minitest/autorun'
require_relative 'program'

class ProgramTest < Minitest::Test
  def test_it_exists
    program = Program.new
    assert_instance_of Program, program
  end

  def test_it_can_return_steps
    skip
    program = Program.new
    s = "ud"
    assert_equal "ud", program.steps_scores(s)
  end

  def test_it_can_return_step_int_direction
    program = Program.new
    s = "uud"
    assert_equal [1,1,-1], program.steps_direction(s)
  end

  def test_it_can_return_step_score
    program = Program.new
    s = "uud"
    assert_equal [1,2,1], program.step_scores(s)
  end

end
