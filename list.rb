class Node
  attr_accessor :value, :next, :prev

  def initialize(value)
    @value = value
  end

  def ==(node)
    return false if node.nil?
    @value == node.value
  end
end

class List
  attr_accessor :head, :tail

  def initialize(head = nil)
    @head = head
    @tail = head
  end

  def add(node)
    if @head.nil?
      @head = node
      @tail = node
      return true
    end
    @tail.next = node
    @tail.next.prev = @tail
    @tail = @tail.next
  end

  # Этот метод delete полность аналогичен
  # следующему, и оставлен только для того,
  # чтобы понимать как работают блоки
  # def delete(node)
  #   current_node = @head
  #   while current_node != nil
  #     if current_node == node
  #       prev_n = current_node.prev
  #       next_n = current_node.next
  #       if prev_n.nil?
  #         @head = next_n
  #       else
  #         prev_n.next = next_n
  #       end

  #       if next_n.nil?
  #         @tail = prev_n
  #       else
  #         next_n.prev = prev_n
  #       end
  #     end
  #     current_node = current_node.next
  #   end
  # end

  def delete(node, flag = false)
    iterate do |current_node|
      if current_node == node
        prev_n = current_node.prev
        next_n = current_node.next
        if prev_n.nil?
          @head = next_n
        else
          prev_n.next = next_n
        end

        if next_n.nil?
          @tail = prev_n
        else
          next_n.prev = prev_n
        end
        return if flag
      end
    end
  end

  def size
    count = 0
    current_node = @head
      while current_node != nil
        current_node = current_node.next
        count += 1
      end
    "Размер заданного списка: #{count}" 
  end

  def uniq
    #todo
    # реализовать самостоятельно этот метод
  end

  def uniq!
    # todo
    # реализовать самостоятельно этот метод
    # он должен изменять непосредственно тот список
    # на котором этот метод был вызван
    # и оставлять только уникальные значения
  end

  def delete_in(index)
    iterate { |node| node.delete_at(index) }
    # todo
    # необходимо самостоятельно реализовать данный метод
    # он должен удалять из списка элемент под индексом index
    # метод должен коректно работать, в случае если елемент
    # с таким индексом не существует
  end

  def print
    iterate { |node| puts node.value }
  end

  def print_with_index
    iterate_with_index do |node, index|
      puts "Node index=#{index} and  value=#{node.value}"
    end
  end

  def iterate
    if block_given?
      current_node = @head
      while current_node != nil
        yield current_node
        current_node = current_node.next
      end
    else
      print
    end
  end

  def iterate_with_index
    if block_given?
      current_node = @head
      index = 0
      while current_node != nil
        yield current_node, index
        index += 1
        current_node = current_node.next
      end
    else
      print_with_index
    end
  end
end

list = List.new(Node.new(12))
list.add(Node.new(12))
list.add(Node.new(12))
list.add(Node.new(12))
list.add(Node.new(4))
list.add(Node.new(5))
list.add(Node.new(6))
list.add(Node.new(7))
puts list.size
