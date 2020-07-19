# https://medium.com/@young.scottw/implementing-an-undirected-graph-in-ruby-c11258b3d95b
# http://billleidy.com/blog/advent-of-code-and-graph-data-structure.html
class Node
  attr_accessor :name, :neighbors, :weights

  def initialize(name)
    @name = name
    @neighbors = []
    @weights = []
  end
end
