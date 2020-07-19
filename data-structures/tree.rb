# https://medium.com/@jessgreb01/data-structures-trees-and-ruby-2959c47ffa26

class Node
  attr_reader :value
  attr_accessor :left, :right

  def initialize(value=nil)
    @value = value
    left = nil
    right = nil
  end
end

