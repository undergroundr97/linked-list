require_relative 'node'
class LinkedList
  attr_accessor :head
  def initialize(node)
    @head = Node.new(node)
    @count = 1
  end
  def append(node)
    current_node = @head
    while current_node.next_node != nil
      current_node = current_node.next_node
    end
    current_node.next_node = Node.new(node, nil)
    @count += 1
  end
  def prepend(node)
     @head = Node.new(node, @head)
     @count += 1
  end
  def size
    @count
  end
  def head
    @head.value
  end
  def tail
    current_node = @head
    while current_node.next_node != nil
      current_node = current_node.next_node
    end
    tail = current_node.value
    tail
  end
  def at(index)
    current_node = @head
    if index > @count
      nil
    end
  end
end

 link = LinkedList.new(2)

 link.append('5')
 link.append('54')
 link.append('52')
#  link.prepend('4')
#  link.prepend('4')
#  link.prepend('4')
#  link.prepend('4')
 link.append('52')
 p link.size

#  p link.head

p link.tail

p link.at(10)