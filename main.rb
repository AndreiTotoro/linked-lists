require_relative 'lib/linked_list'

list = LinkedList.new

list.append('test')
list.append('blah')
list.append('bdasd')
list.append('blahaa')
list.append('big')
list.append('big')
puts list.tail.value
puts list.size
puts list.contains?('blahaa')
p list.find('blahaa')
p list.find('blahaa')
puts list.contains?('blahaa')
puts list.size
puts list.tail.value
list.to_s

list.insert_at('Please work', 1)
list.to_s

list.remove_at(0)
list.to_s
