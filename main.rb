# frozen_string_literal: true

require_relative 'lib/linked_list'

list = LinkedList.new

list.append('dog')
list.append('cat')
list.append('parrot')
list.append('hamster')
list.append('snake')
list.append('turtle')

puts list
# puts list.at(-1).value
# puts list.at(0).value
# puts list.at(1).value

list.remove_at(-1)

puts list

puts "Head: #{list.head.value}"
puts "Tail: #{list.tail.value}"
