class Queue
  def initialize
    @queue = Array.new
  end

  def dequeue
    @queue.pop
  end

  # in ruby 2.0 the runtime is amortized O(1)
  # https://github.com/ruby/ruby/commit/fdbd3716781817c840544796d04a7d41b856d9f4
  def enqueue(element)
    @queue.unshift(element)
    self
  end

  def size
    @queue.size
  end

  def print
    puts "The queue is #{@queue}"
  end
end
