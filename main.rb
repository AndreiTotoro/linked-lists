require_relative 'lib/linked_list'

list = LinkedList.new

list.append('test')
list.append('blah')
list.append('bdasd')
list.append('blahaa')
puts list.tail.value
puts list.size
puts list.contains?('blahaa')
puts list.find('blahaa')
list.pop
puts list.find('blahaa')
puts list.contains?('blahaa')
puts list.size
puts list.tail.value
