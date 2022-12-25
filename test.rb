
require_relative 'lib/linked-lists'

new_list = LinkedList.new

new_list.append(1234)

new_list.append(5678)

new_list.append(8122)

new_list.append(1419)

puts new_list.size

# new_list.pop

puts new_list.size

puts new_list.at(0).value
puts new_list.at(1).value
puts new_list.at(2).value
puts new_list.at(3).value

puts new_list.contains?(1419)
puts new_list.find(1419)

puts new_list.to_s