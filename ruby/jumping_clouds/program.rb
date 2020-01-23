require 'pry'

class Program
  def clouds(clouds)
    clouds
  end

  def jumpingOnClouds(clouds)
    counter = 0
    current_index = 0
    clouds.each_with_index do |c,i|
      if c == 0
        counter += 1
      else
        false
      end
    end
  end
end




# [00100]
