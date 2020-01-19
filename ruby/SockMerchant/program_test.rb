require "minitest/autorun"
require "minitest/pride"
require_relative "program"

class ProgramTest < Minitest::Test
  def test_it_exists
    program = Program.new
    assert_instance_of Program, program
  end
end
