require 'rspec'
require './lib/anagrams-antigrams.rb'

describe 'String#check_anagram' do

  it "returns 'it is a anagram' if user enters 'tea' and checks with 'eat' " do
    expect("tea".check_anagram("eat")).to(eq('it is a anagram'))
  end
end

describe 'String#check_palindrome' do

  it "if it is a anagram also check if it is a palindrome and return 'it is a palindrome' " do
    expect("elle".check_palindrome).to(eq('it is a palindrome'))
  end
end
