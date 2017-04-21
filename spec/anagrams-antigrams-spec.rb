require 'rspec'
require './lib/anagrams-antigrams.rb'

describe 'String#check_anagrams' do

  it "returns 'it is a anagram' if user enters 'tea' and checks with 'eat' " do
    expect("tea".check_anagrams("eat")).to(eq('it is a anagram'))
  end

  it "returns 'it is a anagram' regardless of case " do
    expect("Tea".check_anagrams("eaT")).to(eq('it is a anagram'))
  end
end

describe 'String#check_palindrome' do

  it "if it is a anagram also check if it is a palindrome and return 'it is a palindrome' " do
    expect("elle".check_palindrome).to(eq('it is a palindrome'))
  end
end

describe 'String#check_is_a_word' do

  it "checks if the user input is a word  and return 'it is a word' " do
    expect("ruby".check_is_a_word).to(eq('it is a word'))
  end
  it "checks if the user input is a word  and return 'You need to input actual words!' " do
    expect("ggg".check_is_a_word).to(eq('You need to input actual words!'))
  end
end


  describe 'String#check_antigrams' do

    it "checks the letters have no match and return 'these letters have no matches and are antigrams' " do
      expect("hi".check_antigrams?("bye")).to(eq(true))
    end
end
