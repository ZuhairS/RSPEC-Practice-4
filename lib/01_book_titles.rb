class Book

  attr_reader :title

  def title=(title)
    lowercase_words = %w(the a an of and in)
    @title = title.split.map.with_index do |word, idx|
      if idx == 0
        word.capitalize
      else
        lowercase_words.include?(word) ? word : word.capitalize
      end
    end.join(" ")
  end

end
