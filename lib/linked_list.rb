require_relative 'node'
class LinkedList
  attr_accessor :head, :count
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
    if index > @count - 1
      nil
    else
      to_find = 0
       current_node = @head
      while to_find != index
        current_node = current_node.next_node
        to_find += 1
      end
      node_value = current_node.value
      node_value
    end
  end
  def pop
    return nil if @head.nil?
    if @head.next_node.nil?
      @head = nil
      return
    end
    current_node = @head
    while current_node.next_node && current_node.next_node.next_node
      current_node = current_node.next_node
    end
    current_node.next_node = nil 
    @count -= 1    
  end
  def contains?(value)
    current_node = @head
    tof = false
    while current_node.next_node != nil
      current_node = current_node.next_node
      if current_node.value == value
        tof = true
      end
      
    end
    tof
  end
  def find(value)
    if self.contains?(value)
      current_node = @head
      count = 0 
      while current_node.next_node != nil
        count += 1
        current_node = current_node.next_node
        if current_node.value == value
          count
        end
      end
      count
    else
      nil   
    end 
  end
  def to_s
    current_node = @head
    while current_node != nil
      if current_node.next_node != nil
        print "( #{current_node.value} ) -> " # if we use PUTS it will jump a line on to_s method
      else
        print "( #{current_node.value} ) -> " # if we use PUTS it will jump a line on to_s method
      end
      current_node = current_node.next_node
    end
  end
end

 link = LinkedList.new(2)
#  link.append('5')
 link.append('54')
 link.append('52')
 link.prepend('4')
 link.prepend('4')
 link.prepend('4')
 link.prepend('4')
 link.append('52')
 p link.size

 p link.head

p link.tail
p link.count
p link.tail
p link.at(4)

p link.pop  
p link.pop  
p link.append('23')

p link


# p link.find(10)
link.append('ahoy cachorro')
p link.to_s

# link.append('ahoy cachorro')