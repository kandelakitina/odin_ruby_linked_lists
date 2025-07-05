# frozen_string_literal: true

class LinkedList
  attr_accessor :head, :tail

  def initialize(head = nil, tail = nil)
    @head = head
    @tail = tail
  end

  def append(item)
    return init_list_with(item) if empty?

    new_node = Node.new(item)
    @tail.next_node = new_node
    @tail = new_node
  end

  def prepend(item)
    return init_list_with(item) if empty?

    new_node = Node.new(item, @head)
    @head = new_node
  end

  def size
    current = @head
    counter = 0
    while current
      counter += 1
      current = current.next_node
    end
    counter
  end

  def at(index)
    go_next(index)
  end

  private

  def empty?
    @head.nil?
  end

  def init_list_with(item)
    node = Node.new(item)
    @head = node
    @tail = node
  end

  def go_next(num)
    current = @head
    num.times do
      raise 'Index out of bounds' if current.nil?
      current = current.next_node
    end
    current
  end
end

class Node
  attr_accessor :value, :next_node

  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end
