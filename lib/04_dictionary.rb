class Dictionary

  attr_accessor :entries

  def initialize(entries = {})
    @entries = entries
  end

  def add(entry)
    if entry.is_a? Hash
      @entries[entry.keys.first] = entry.values.first
    elsif entry.is_a? String
      @entries[entry] = nil
    end
  end

  def include?(key)
    @entries.include?(key)
  end

  def find(key)
    @entries.select { |k, _| k.include?(key) }
  end

  def printable
    @entries.map { |k, v| "[#{k}] \"#{v}\"" }.sort.join("\n")
  end

  def entries
    @entries
  end

  def keywords
    @entries.keys.sort
  end

end
