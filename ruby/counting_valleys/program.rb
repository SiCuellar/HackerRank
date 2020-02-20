require 'pry'

class Program
  def step_converter(steps)
    steps.chars
  end

  def constraint_checker(steps)
    step_array = step_converter(steps)
    if step_array.count > 2 && step_array.count < 1000000
      true
    end
  end
end
