require 'minitest/autorun'
require 'minitest/emoji'
require_relative './program.rb'

class ProgramTest < Minitest::Test
  def test_it_exists
    program = Program.new
    assert_instance_of Program, program
  end
end
