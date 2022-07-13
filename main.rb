require_relative 'lib/linked_list'

list = LinkedList.new

list.append('test')
list.append('blah')
puts list.print_ends
