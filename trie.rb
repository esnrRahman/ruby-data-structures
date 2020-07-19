# Node is predefined to something in Leetcode. Which is why it was giving errors
# when using just Node
class TrieNode
  attr_reader :data, :children
  attr_accessor :term
  def initialize(data)
    @data = data
    @children = []
    @term = false
  end

  def insert(char)
    return get(char) if have?(char)

    child = TrieNode.new(char)
    @children << child
    child
  end

  def have?(char)
    @children.each do |c|
      return true if c.data == char
    end

    false
  end

  def get(char)
    @children.each do |child|
      return child if child.data == char
    end

    false
  end
end

class Trie
  attr_reader :root
  def initialize
    @root = TrieNode.new(nil)
  end

  def insert(word)
    trie_node = @root
    word.size.times do |i|
      child = trie_node.insert(word[i])
      trie_node = child
    end
    trie_node.term = true
  end

  def have?(word)
    trie_node = @root
    word.size.times do |i|
      return false unless trie_node.have?(word[i])
      trie_node = trie_node.get(word[i])
    end

    return trie_node.term == true
  end
end
