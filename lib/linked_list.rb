require_relative 'node'

class LinkedList
  def initialize
    @head = nil
    @tail = nil
  end

  def append(value)
    new_node = Node.new(value)
    @head = new_node if @head.nil?
    if !@tail
      @tail = new_node
    else
      @tail.next_node = new_node
    end
    @tail = new_node
  end

  def prepend(value)
    new_node = Node.new(value, @head)
    @tail = new_node if @tail.nil?
    @head = new_node
  end

  def size
    counter = 0
    current_node = @head
    until current_node.nil?
      counter += 1
      current_node = current_node.next_node
    end
    counter
  end

  attr_reader :head, :tail

  def at(index)
    counter = 0
    current_node = @head
    until counter == index
      counter += 1
      current_node = current_node.next_node
    end
    current_node.value
  end

  def print_ends
    "Head: #{@head} Tail: #{@tail}"
  end
end
