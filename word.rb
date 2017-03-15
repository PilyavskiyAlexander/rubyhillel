class Word
  attr_reader :visible_word, :secret_word

  def initialize
    @secret_word = 'car'
    @visible_word = '_' * @secret_word.length
  end

  def char_exists?(char)
    indexes = find_indexes(char)

    update_visible_word(indexes, char)

    !indexes.empty?

    # @secret_word.include?(char)

  end

  def finished?
    !@visible_word.include?('_')
  end

  def update_visible_word(indexer, char)
    indexer.each do |index|
      @visible_word[index] = char
    end
  end

  def find_indexes(char)
    indexer = []
    @secret_word.split('').each_with_index do  |symbol, index|
      indexer << index if symbol == char
    end
    indexer
  end
end
