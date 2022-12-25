
class Node

  attr_accessor :value, :next_node

  def initialize(value=nil, next_node=nil)

    @value = value
    @next_node = next_node
  end

end

class LinkedList

  attr_accessor :name

  def initialize(head=nil, tail=nil)
    @head = nil
    @tail = nil

  end



def append(value)
  #append(value) adds a new node containing value to the end of the list
  if @head == nil
    @head = Node.new(value)
  else
    @tail = Node.new(value)
    @head.next_node = @tail.value
  end


end

def prepend(value)
  #prepend(value) adds a new node containing value to the start of the list
  if @head == nil
    append(value)
  else
    # have to move everything down by one
    # so if
end

#size returns the total number of nodes in the list



def head
  #head returns the first node in the list
  puts "#{@head} Value: #{@head.value}"
  @head

end
def tail
  #tail returns the last node in the list
  puts "#{@tail} Value: #{@tail.value}"
  @tail

end

#at(index) returns the node at the given index

#pop removes the last element from the list

#contains?(value) returns true if the passed in value is in the list and otherwise returns false.

#find(value) returns the index of the node containing value, or nil if not found.

#to_s represent your LinkedList objects as strings, so you can print them out and preview them in the console. The format should be: ( value ) -> ( value ) -> ( value ) -> nil


end




new_list = LinkedList.new

new_list.append(1234)

new_list.append(5678)

puts new_list.head
puts new_list.tail