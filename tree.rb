class Node
  include Enumerable

  attr_accessor :value, :left, :right

  def initialize(value)
    @value = value
  end

  def size
    size = 1
    size += @left.size unless @left.nil?
    size += @right.size unless @right.nil?
    size
  end

  def each
    @left.each { |node| yield node } unless @left.nil?
    yield self
    @right.each { |node| yield node } unless @right.nil?
  end

  def <=>(other_node)
    @value <=> other_node.value
  end

  def >(other_node)
    @value > other_node.value
  end

  def <(other_node)
    @value < other_node.value
  end

  def insert(value)
    case @value <=> value
    when -1
      insert_right(value)
    when 1
      insert_left(value)
    when 0
      false
    end
  end

  alias_method :<<, :insert

  def to_a
    @left.to_a + [@value] + @right.to_a
  end

  def include?(value)
    case @value <=> value
    when -1
      @right.include?(value)
    when 1
      @left.include?(value)
    when 0
      true
    else
      false
    end
  end

  def print
    @left.print unless @left.nil?
    puts @value
    @right.print unless @right.nil?
  end

  def find_min
    # todo
    # реализовать метод
    # он должен возвращать минимальное значение дерева
  end

  def find_max
    # todo
    # реализовать метод
    # он должен возвращать максимальное значение дерева
  end

  private

    def insert_left(value)
      if @left.nil?
        @left = Node.new(value)
      else
        @left.insert(value)
      end
    end

    def insert_right(value)
      if @right.nil?
        @right = Node.new(value)
      else
        @right.insert(value)
      end
    end
end
