require 'pry'

class Program
  def clouds(clouds)
    clouds
  end

  def jumpingOnClouds(clouds)
    counter = 0
      clouds.each_with_index do |c,i|
        if c == 0 && clouds[i+1]
          # make sure to add a validation case to to index checker
        counter += 1
      end
    end
    counter
  end
end
