class Book
  #  your code goes here!
  def initialize
    @result_title = []
  end

  def title
    articles = ["a","the","an"]
    conjunctions = ["and"]
    prepositions = ["in","of"]
    array = @title.split
    @title.split.each do |word|
      if articles.include?(word) || conjunctions.include?(word) || prepositions.include?(word)
        @result_title << word
        @result_title[0].capitalize!
      else
        @result_title << word.capitalize
      end
    end
    return @result_title.join(" ")
  end

  def title= title
    @title = title
  end
end
