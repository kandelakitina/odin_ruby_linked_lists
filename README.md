# Odin Ruby Course - Linked List Implementation

This project contains a Ruby implementation of a singly linked list, designed for the Odin Ruby course. It demonstrates fundamental data structures and their operations, including appending, prepending, finding, inserting, and removing nodes.

## Features

- Create and initialize a linked list
- Add nodes to the end (`append`) or start (`prepend`)
- Remove nodes (`pop`, `remove_at`)
- Search for values (`find`, `contains?`)
- Access nodes by index (`at`)
- Insert at specific position (`insert_at`)
- Display the list as a string (`to_s`)

## Usage

You can instantiate a `LinkedList` object and perform various operations. Example:

```ruby
list = LinkedList.new
list.append(10)
list.prepend(5)
puts list
# Output: ( 5 ) -> ( 10 ) -> nil
```

## Nix Scaffolding

This project is set up using [Nix](https://nixos.org/download.html), a tool for reproducible development environments. Ensure you have Nix installed, then run:

```bash
nix develop
```

This will configure the environment with the necessary dependencies, allowing you to run tests and scripts consistently across different setups.

Run `rspec spec/linked_list_spec.rb` for tests and `ruby main` to run the app.

## Learning Objectives

- Understand linked list data structures
- Write object-oriented Ruby code
- Explore recursive approaches to list operations such as traversal, insertion, and deletion, to write more elegant and functional code.

## Potential Recursive Refactoring Ideas

The current linked list implementation uses iterative approaches for traversal in methods such as `each`, `pop`, `find`, `at`, `insert_at`, and `remove_at`. To explore cleaner solutions, consider refactoring these methods to use recursion, which can enhance code clarity and demonstrate the power of recursive algorithms:

- **`each`**: Use a recursive helper to traverse nodes, yielding each to the block.
- **`pop`**: Recurse to find the second-to-last node for updating `@tail`.
- **`find`**: Recursively search through nodes for a value or condition.
- **`at`**: Navigate to the index by recursion, decreasing the counter.
- **`insert_at` and `remove_at`**: Recursively descend to the target position to insert or remove nodes.

Implementing these ideas will deepen your understanding of recursion and improve your design skills for linked data structures.
