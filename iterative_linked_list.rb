class Node
  attr_accessor :word, :next_node

  def initialize(word, next_node)
    @word = word
    @next_node = next_node
  end
end


class IterativeLinkedList

  def initialize
    @head = Node.new(nil, nil)
  end

  def count
    current = @head
    size = 0
      while current.next_node != nil
        current = current.next_node
        size += 1
      end
        size
  end

  def push(word)
    current = @head
      while current.next_node != nil
        current = current.next_node
      end
        current.next_node = Node.new(word, nil)
  end

  def pop
    current = @head
    while current.next_node.next_node != nil
      current = current.next_node
    end
    current.next_node

    require 'pry'
    binding.pry

    # current.next_node = Node.new(nil, nil)
    # current.next_node 
  end
end












