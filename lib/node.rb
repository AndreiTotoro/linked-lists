class Node
  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end

  attr_reader :value, :next_node
end
