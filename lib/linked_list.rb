# frozen_string_literal: true

class LinkedList
  include Enumerable

  attr_accessor :head, :tail

  def initialize(head = nil, tail = nil)
    @head = head
    @tail = tail
  end

  def each
    current = @head
    while current
      yield current
      current = current.next_node
    end
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

    @tail = at(-1)
    @tail.next_node = nil
  end

  def length
    count
  end

  def find(value = nil, &block)
    if block_given?
      super(&block) # fallback to Enumerable#find
    else
      each_with_index do |node, index|
        return index if node.value == value
      end
      nil
    end
  end

  def contains?(item)
    !!find(item)
  end

  def at(index)
    index = length + index if index.negative?
    each_with_index do |node, i|
      return node if i == index
    end
    raise 'Index out of bounds'
  end

  def to_s
    nodes = map { |node| "( #{node.value} )" }
    "#{nodes.join(' -> ')} -> nil"
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
end

class Node
  attr_accessor :value, :next_node

  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end
