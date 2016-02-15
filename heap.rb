class Heap
  attr_reader :nodes, :size

  def initialize
    @nodes = []
    @size = 0
  end

  def add(value)
    i = @size
    @nodes << value
    parent = (i - 1) / 2

    while parent >= 0 && i > 0
      if @nodes[i] > @nodes[parent]
        temp = @nodes[i]
        @nodes[i] = @nodes[parent]
        @nodes[parent] = temp
      end
      i = parent
      parent = (i-1) / 2
    end
    @size += 1
  end

  def heapify(index)
    left = 2 * index + 1
    right = 2 * index + 2
    if left < @size
      if @nodes[index] < @nodes[left]
        temp = @nodes[index]
        @nodes[index] = @nodes[left]
        @nodes[left] = temp
        heapify(left)
      end
    end

    if right < @size
      if @nodes[index] < @nodes[right]
        temp = @nodes[index]
        @nodes[index] = @nodes[right]
        @nodes[right] = temp
        heapify(right)
      end
    end
  end

  def get_max
    result = @nodes[0]
    @nodes[0] = @nodes[@size - 1]
    @size -= 1
    heapify(0)
    result
  end

  def print_as_array
    i = 0
    while i < @size
      puts @nodes[i]
      i += 1
    end
  end

  def print_as_heap
    i = 0
    level = 1
    while i < @size
      print "#{@nodes[i]} "
      i += 1
      if i >= level
        puts
        level *= 2 + 1
      end
    end
  end
end

heap = Heap.new

heap.add(2003)
heap.add(1901)
heap.add(2001)
heap.add(20)
heap.add(1900)
heap.add(200)
heap.add(2000)

heap.print_as_heap