require 'pry'

class Program
  def sockMerchant(n, socks)
    sock_pairs = Hash.new

    socks.each do |s|
      if !sock_pairs.include?(s)
        sock_pairs[s] = 1
      else
        count = sock_pairs[s]
        sock_pairs[s] = count + 1
      end
    end
    pairs = 0
    sock_pairs.values.each do |v|
      pairs += v / 2
    end
    pairs
  end
end
