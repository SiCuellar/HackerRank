require 'pry'

class Program
  def steps_direction(steps)
    steps.chars.map do |char|
      if char == "u"
        1
      elsif char == "d"
        -1
      else
      end
    end
  end

  def step_scores(s)
    directions = steps_direction(s)
    counter = 0
    directions.map do |dir|
      # binding.pry
      if dir == 1
        counter += 1
      elsif dir == -1
        counter = counter -1 
      else
      end
    end
  end
end
