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

  def first_equilibrium_index(start = 1)
    start.upto(size - 1) do |n|
      return n if left_sum(n) == right_sum(n)
    end
    -1
  end

  def self.first_equilibrium_index(a)
    new(a).first_equilibrium_index
  end

  def equilibrium_indices
    last = 0
    1.upto(size - 1).map do |n|
      next if last > n
      last = first_equilibrium_index(last + 1)
      last = nil if last == -1
      last
    end.compact
  end

  def self.equilibrium_indices(a)
    new(a).equilibrium_indices
  end
end
