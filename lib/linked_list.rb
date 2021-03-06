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
    current_node = @head
    index.times do
      current_node = current_node.next_node
    end
    current_node
  end

  def pop
    @tail = at(size - 2)
    @tail.next_node = nil
  end

  def contains?(value)
    has_value = false
    size.times do |index|
      has_value = true if at(index).value == value
    end
    has_value
  end

  def find(value)
    return nil if contains?(value) == false

    size.times do |index|
      return index if at(index).value == value
    end
  end

  def to_s
    size.times do |index|
      print "( #{at(index).value} )".chomp
      if !at(index).next_node.nil?
        print ' -> '.chomp
      else
        print ' -> nil'.chomp
      end
    end
    print "\n"
  end

  def insert_at(value, index)
    new_node = Node.new(value)
    new_node.next_node = at(index + 1)
    at(index).next_node = new_node
  end

  def remove_at(index)
    @head = at(1) if index == 0
    at(index - 1).next_node = at(index + 1)
  end
end
