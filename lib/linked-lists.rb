
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

  def is_empty?
      if @head == nil
          return true
      else
          return false
      end
  end

def append(value)
  #append(value) adds a new node containing value to the end of the list
  if self.is_empty?
    @head = Node.new(value)
  else
    @tail = Node.new(value)
    @head.next_node = @tail
  end


end

def prepend(value)
  #prepend(value) adds a new node containing value to the start of the list
  if self.is_empty?
    append(value)
  elsif @tail == nil
    @tail = @head
    @head = Node.new(value, @tail)
    @tail.next_node = nil
  elsif @tail != nil
     new_n = Node.new(value, @head)
     @head = new_n
    # have to move everything down by one
    # so if list only contains head (head not empty, tail empty)
      # then we need to make current @head the @tail, then make @head the new node
    # if both head and tail are not empty
      # then we leave current tail where it is
      # make new node with next_node current @head value
      # make new node new @head
  end
end

def size

  if self.is_empty?
    count = 0
  else
    count = 1
    current_node = @head

    while current_node.next_node != nil
      current_node = current_node.next_node
      count += 1
    end

  end
  count
end

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

new_list.prepend(8122)

puts new_list.head
puts new_list.tail

puts new_list.size