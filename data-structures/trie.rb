class Trie
  attr_accessor :term, :children

  def initialize
      @children, @term  = {}, false
  end

  def insert(word)
      curr = self

      word.each_char do |c|
        curr.children[c] = Trie.new unless curr.children[c]
        curr = curr.children[c]
      end
      curr.term = true
  end

  def have?(word)
    curr = self
    word.each_char do |c|
      return false unless curr.children[c]
      curr = curr.children[c]
    end

    curr.term == true
  end
end
