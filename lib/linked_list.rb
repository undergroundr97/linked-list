require_relative 'node'
class LinkedList
  attr_accessor :first, :next
  def initialize(first = Node.new)
    @first
  end
  def append(node)
    app = Node.new
    app.value = node
    app.next_value = @first
  end
  
end

p link = LinkedList.new

p link.first
p link.append('dog')

p link.first
p link.dog