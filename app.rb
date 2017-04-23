require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/anagrams_antigrams')


get('/') do
  erb(:index)
end

get('/result') do
  @string1 = params.fetch('string1')
  @string2 = params.fetch('string2')
  @string1.clean_string #cleans the string
  @string2.clean_string #cleans the string
  if @string1.check_is_a_word? & @string2.check_is_a_word?
    @check_anagrams = @string1.check_anagrams(@string2)
    @check_palindrome = @string1.check_palindrome(@string2)
    @check_antigrams = @string1.check_antigrams(@string2)
  else
    @check_anagrams = "One of the strings is not a word"
  end
  erb(:result)
end
