# frozen_string_literal: true

class Node
  attr_accessor :value, :next_node

  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

class LinkedList
  attr_accessor :name

  def initialize(_head = nil, _tail = nil)
    @head = nil
    @tail = nil
  end

  def is_empty?
    return true if @head.nil?
    false
  end

  def append(value)
    # append(value) adds a new node containing value to the end of the list
    if is_empty?
      @head = Node.new(value)
    elsif @tail.nil?
      @tail = Node.new(value)
      @head.next_node = @tail
    else
      new_n = Node.new(value)
      @tail.next_node = new_n
      @tail = new_n
    end
  end

  def prepend(value)
    # prepend(value) adds a new node containing value to the start of the list
    if is_empty?
      append(value)
    elsif @tail.nil?
      @tail = @head
      @head = Node.new(value, @tail)
      @tail.next_node = nil
    elsif !@tail.nil?
      new_n = Node.new(value, @head)
      @head = new_n
    end
  end

  def size
    if is_empty?
      count = 0
    else
      count = 1
      current_node = @head

      until current_node.next_node.nil?
        current_node = current_node.next_node
        count += 1
      end

    end
    count
  end

  def head
    # head returns the first node in the list
    puts "#{@head} Value: #{@head.value}"
    @head
  end

  def tail
    # tail returns the last node in the list
    puts "#{@tail} Value: #{@tail.value}"
    @tail
  end

  def at(index)
    # at(index) returns the node at the given index

    return 'ERROR: list empty' if is_empty?

    count = 0
    current_node = @head
    return current_node if count == index

    until current_node.next_node.nil?
      current_node = current_node.next_node
      count += 1

      return current_node if count == index
    end
  end

  def pop
    # pop removes the last element from the list
    if is_empty?
      'ERROR: list empty'
    elsif size < 2
      @head = nil
      @tail = nil
    elsif size == 2
      @tail = nil
    else
      before_tail = at(size - 2) # before the tail
      @tail = nil
      @tail = before_tail # at(size - 1) # tail
      @tail.next_node = nil
    end
  end

  def contains?(value)
    # contains?(value) returns true if the passed in value is in the list and otherwise returns false.
    does = false
    return 'ERROR: list empty' if is_empty?

    n = 0
    until n == size
      does = true if at(n).value == value
      n += 1
    end

    does
  end

  def find(value)
    # find(value) returns the index of the node containing value, or nil if not found.
    index = nil
    return 'ERROR: list empty' if is_empty?

    n = 0
    until n == size
      index = n if at(n).value == value
      n += 1
    end

    index
  end

  def to_s
    # to_s represent your LinkedList objects as strings, so you can print them out and preview them in the console. The format should be: ( value ) -> ( value ) -> ( value ) -> nil
    string = ''
    n = 0
    until n == size
      string += "#{at(n).value} -> "
      n += 1
    end
    string += 'nil'
    string
  end
end
