class String
  define_method(:check_anagram) do |word2|
    letters_of_word1 = self.split("").sort
    letters_of_word2 = word2.split("").sort
    output = ""
      if(letters_of_word1 == letters_of_word2)
        output = "It is a anagram"
      else
        output = "It is not a anagram"
      end
    output
  end
end
