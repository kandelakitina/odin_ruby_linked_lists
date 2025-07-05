# frozen_string_literal: true

class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def append(item)
    check_head_nil(item)
    @tail.next_node = Node.new(item)
    @tail = @tail.next_node
  end

  def prepend(item)
    check_head_nil(item)
    @tail = @head
    @head = Node.new(item)
    @head.next_node = @tail
  end

  def size
    counter = 0
    current = head
    while current.next_node
      counter += 1
      current = current.next_node
    end
    counter
  end

  private

  def check_head_nil(item)
    return unless @head.nil?

    @head = Node.new(item)
    @tail = @head
  end
end

class Node
  attr_accessor :value, :next_node

  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end
