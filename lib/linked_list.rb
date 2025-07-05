# frozen_string_literal: true

class LinkedList
  include Enumerable

  attr_accessor :head, :tail

  def initialize(head = nil, tail = nil)
    @head = head
    @tail = tail
  end

  def each(&block)
    each_node(&block)
  end

  def append(value)
    node = Node.new(value)
    if empty?
      @head = node
    else
      @tail.next_node = node
    end
    @tail = node
  end

  def prepend(value)
    node = Node.new(value, @head)
    @tail = node if empty?
    @head = node
  end

  def pop
    return nil if empty?
    return clear_list if single_node?

    @tail = find_penultimate
    @tail.next_node = nil
  end

  def size
    count = 0
    each_node { count += 1 }
    count
  end

  def at(index)
    node_at(index)
  end

  private

  def empty?
    @head.nil?
  end

  def single_node?
    @head == @tail
  end

  def clear_list
    @head = nil
    @tail = nil
  end

  def find_penultimate
    current = @head
    current = current.next_node until current.next_node == @tail
    current
  end

  def each_node
    current = @head
    while current
      yield current
      current = current.next_node
    end
  end

  def node_at(index)
    current = @head
    index.times do
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
