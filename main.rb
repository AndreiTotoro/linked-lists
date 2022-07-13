require_relative 'lib/linked_list'

list = LinkedList.new

list.append('test')
list.append('blah')
list.append('bdasd')
list.append('blahaa')
puts list.tail.value
puts list.size
puts list.contains?('blahaa')
p list.find('blahaa')
list.pop
p list.find('blahaa')
puts list.contains?('blahaa')
puts list.size
puts list.tail.value
list.to_s
list.prepend('This is new')
list.to_s
