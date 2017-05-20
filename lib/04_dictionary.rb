class Dictionary
  #  your code goes here!
  def initialize
    @entry = {}
  end

  def entries
    @entry
  end

  def add(hash)
    if hash.class == Hash
      @entry[hash.keys[0]] = hash.values[0]
    else
      @entry[hash] = nil
    end
  end

  def include?(key)
    @entry.include?(key)
  end

  def find(key)
    return @entry.select { |k,v| k.include?(key) }
  end

  def keywords
    @entry.keys.sort
  end

  def printable
    result = ""
    keywords.each do |key|
      result += "[#{key}] \"#{@entry[key]}\"\n"
    end
    result.chomp
  end

end
