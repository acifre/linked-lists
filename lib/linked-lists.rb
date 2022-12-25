
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
  elsif @tail == nil
    @tail = Node.new(value)
    @head.next_node = @tail
  else
    new_n = Node.new(value)
    @tail.next_node = new_n
    @tail = new_n
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
  def at(index)
    #at(index) returns the node at the given index

    if self.is_empty?
      return "ERROR: list empty"
    else
      count = 0
      current_node = @head
      if count == index
        return current_node
      end

      while current_node.next_node != nil
        current_node = current_node.next_node
        count += 1

        if count == index
          return current_node
        end
      end

    end
  end
  def pop

    # pop removes the last element from the list
    if self.is_empty?
      return "ERROR: list empty"
    elsif self.size < 2
      @head = nil
      @tail = nil
    elsif self.size == 2
      @tail = nil
    else
      before_tail = at(size - 2) # before the tail
      @tail = nil
      @tail = before_tail #at(size - 1) # tail
      @tail.next_node = nil
    end

  end

  def contains?(value)
    #contains?(value) returns true if the passed in value is in the list and otherwise returns false.
    does = false
    n = 0
    until n == self.size
      does = true if self.at(n).value == value
      n += 1
    end
    does
  end

#find(value) returns the index of the node containing value, or nil if not found.

#to_s represent your LinkedList objects as strings, so you can print them out and preview them in the console. The format should be: ( value ) -> ( value ) -> ( value ) -> nil


end




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