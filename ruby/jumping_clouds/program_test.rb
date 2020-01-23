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
    assert_equal [0,1,0], program.clouds
  end
end
