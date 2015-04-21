# Array with equilibrium index extensions.
class EquilibriumIndexArray < Array
  def left_sum(n)
    return 0 if n == 0
    self[0..(n - 1)].inject(:+)
  end

  def right_sum(n)
    return 0 if n > size - 2
    self[(n + 1)..-1].inject(:+)
  end

  def equilibrium_index
    1.upto(size) do |n|
      return n if left_sum(n) == right_sum(n)
    end
    -1
  end

  def self.equilibrium_index(a)
    new(a).equilibrium_index
  end
end
