require 'minitest/autorun'
require 'minitest/emoji'
require_relative './program.rb'

class ProgramTest < Minitest::Test
  def test_it_exists
    program = Program.new
    assert_instance_of Program, program
  end

  def test_it_can_convert_sample_input_to_arrays
    program = Program.new
    input = 1 1 1 0 0 0
            0 1 0 0 0 0
            1 1 1 0 0 0
            0 0 2 4 4 0
            0 0 0 2 0 0
            0 0 1 2 4 0

    expected =[[1,1,1,0,0,0],
              [0,1,0,0,0,0],
              [1,1,1,0,0,0],
              [0,0,2,4,4,0],
              [0,0,0,2,0,0],
              [0,0,1,2,4,0]]

    assert_equal expected, program.make_arrays
  end
end
