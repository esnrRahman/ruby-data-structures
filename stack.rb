class Stack
  def initialize
    @stack = Array.new
  end

  def pop
    @stack.pop
  end

  def push(element)
    @stack.push(element)
    self
  end

  def peek
    @stack[-1]
  end

  def size
    @stack.size
  end

  def print
    puts "The stack is #{@stack}"
  end
end
