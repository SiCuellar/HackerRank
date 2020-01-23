require 'minitest/pride'
require 'minitest/autorun'
require_relative 'program'

class ProgramTest < Minitest::Test
  def test_it_exist
    program = Program.new
    assert_instance_of Program, program
  end

  def test_it_can_return_clouds
    program = Program.new
    c = [0,1,0]
    assert_equal [0,1,0], program.clouds(c)
  end

  def test_it_can_jump_min_clouds
    program = Program.new
    c = [0,1,0]
    assert_equal 1, program.jumpingOnClouds(c)
  end
end
