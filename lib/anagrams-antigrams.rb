class String
  define_method(:check_anagrams) do |word2|
    letters_of_word1 = self.downcase.split("").sort
    letters_of_word2 = word2.downcase.split("").sort
    output = ""
    if(letters_of_word1 == letters_of_word2)
      output = ("it is a anagram")
    else
      output = ("it is not an anagram")
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
  define_method(:check_is_a_word?) do
    words = self.downcase.split(" ")
    words.each() do |word|
      if word.include?("a") | word.include?("e") | word.include?("i") | word.include?("o") | word.include?("u") | word.include?("y")
         true
      else
         false
      end
    end
  end

  #checks if the letters that don't match are antigrams
  define_method(:check_antigrams?) do |input|
    letters_of_word1 = self.downcase.split("").sort
    letters_of_word2 = input.downcase.split("").sort
    is_an_antigram = true
    letters_of_word1.each() do |letter1|
      if letters_of_word2.include?(letter1)
         is_an_antigram = false #not an antigram
      else
        return is_an_antigram = true #it is an antigram
      end
    end
  end

#removes spaces and punctuations
  define_method :clean_string do
  modified_string = self.gsub!(/[^[:alpha:]]/,'')
  modified_string
  end
end
