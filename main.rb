require_relative 'lib/linked_list'

list = LinkedList.new

list.append('test')
list.append('blah')
list.append('bdasd')
list.append('blahaa')
puts list.at(1)
puts list.size
