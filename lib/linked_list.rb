# frozen_string_literal: true

class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def append(item)
    if @head.nil?
      @head = Node.new(item)
      @tail = @head
    else
      @tail.next_node = Node.new(item)
      @tail = @tail.next_node
    end
  end
end

class Node
  attr_accessor :value, :next_node

  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end
