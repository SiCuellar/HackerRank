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

  def elevation_count(steps)
    steps_array = step_converter(steps)
    steps_array.map do |step|
      if step == "U"
        1
      else
        -1
      end
    end
  end

  def countingValleys(n, s)
    sea_level = 0
    no_valleys = 0
    s.each_char do |c|
      if c == 'U'
        sea_level += 1
        no_valleys += 1  if sea_level == 0
      else
        sea_level -=  1
      end
    end
    no_valleys
  end
end
