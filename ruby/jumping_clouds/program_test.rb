require 'minitest/pride'
require 'minitest/autorun'
require_relative 'program'

class ProgramTest < Minitest::Test
  def test_it_exist
    program = Program.new
    assert_instance_of Program, program
  end
end
