require_relative 'node'

class LinkedList
  def initialize
    @head = nil
    @tail = nil
  end

  def append(value)
    new_node = Node.new(value)
    @tail = new_node
    @head = new_node if @head.nil?
  end

  def print_ends
    "Head: #{@head} Tail: #{@tail}"
  end
end
