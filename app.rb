require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/anagrams-antigrams')


get('/') do
  erb(:index)
end

get('/result') do
  @string1 = params.fetch('string1')
  @string2 = params.fetch('string2')
  if @string1.check_is_a_word? && @string2.check_is_a_word?
    @check_anagrams = @string1.check_anagrams(@string2)
  else
    @check_anagrams = "One of the strings is not a word"
  end

  erb(:result)
end
