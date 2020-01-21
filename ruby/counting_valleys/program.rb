require 'pry'

class Program
  # def steps_direction(steps)
  #   steps.chars.map do |char|
  #     if char == "u"
  #       1
  #     elsif char == "d"
  #       -1
  #     else
  #     end
  #   end
  # end
  #
  # def step_scores(s)
  #   directions = steps_direction(s)
  #   counter = 0
  #   directions.map do |dir|
  #     if dir == 1
  #       counter += 1
  #     elsif dir == -1
  #       counter = counter -1
  #     else
  #     end
  #   end
  # end

  # def countingValleys(n,s)
  #   scores = step_scores(s)
  #   scores.chunk do |score|
  #     score == 0
  #   end
  #   binding.pry
  #   slope_score = scores.join.split("0")
  # end

  def countingValleys(n,s)
    valley_counter = 0
    altitude_counter = 0

    s.chars.map do |char|
      if char == "u"
        altitude_counter += 1
        if altitude_counter == 0
          valley_counter += 1
        end
      else
        altitude_counter -= 1
      end
    end
    valley_counter
  end
end
