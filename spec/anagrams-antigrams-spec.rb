require 'rspec'
require './lib/anagrams-antigrams.rb'

describe 'String#check_anagram' do

  it "returns 'it is a anagram' if user enters 'tea' and checks with 'eat' " do
    expect("tea".check_anagram("eat")).to(eq('It is a anagram'))
  end
end
