require 'pry'

class Program
  def clouds(clouds)
    clouds
  end

  def jumpingOnClouds(clouds)
    counter = 0
    clouds.each_with_index do |c,i|
      binding.pry
    end
  end
end
