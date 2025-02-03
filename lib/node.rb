class Node
  attr_accessor :value, :next_value
  def initialize(value = nil, next_value = nil)
    @value = value
    @next_value = next_value
  end
end
