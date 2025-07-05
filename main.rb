# frozen_string_literal: true

require_relative 'lib/linked_list'

list = LinkedList.new

list.append('dog')
list.append('cat')
list.append('parrot')
list.append('hamster')
list.append('snake')
list.append('turtle')

# puts list

puts "HEAD: #{list.head.value}"
puts "TAIL: #{list.tail.value}"
puts "TAIL.next_node: #{list.tail.next_node.inspect}"
