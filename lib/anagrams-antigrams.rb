class String
  define_method(:check_anagram) do |word2|
    letters_of_word1 = self.downcase.split("").sort
    letters_of_word2 = word2.downcase.split("").sort
    output = ""
    if(letters_of_word1 == letters_of_word2)
      output = ("it is a anagram")
    else
      output = ( "it is not a anagram")
    end
    output
  end

  # checks if the string is a palindrome or not.
  define_method(:check_palindrome) do
    if self.downcase == self.downcase.reverse
      return "it is a palindrome"
    else
      return "it is not palindrome"
    end
  end

  # checks if the input string is a "word" or not.
  define_method(:check_is_a_word) do
    words_array = self.downcase.split(" ")
    output = ""
    words_array.each() do |word|
      if word.include?("a") | word.include?("e") | word.include?("i") | word.include?("o") | word.include?("u") | word.include?("y")
        output = "it is a word"
      else
        output = "You need to input actual words!"
      end
      return output
    end
  end
end
