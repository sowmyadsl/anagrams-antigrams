require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/anagrams_antigrams')
require('pry')


get('/') do
  erb(:index)
end

get('/result') do
  @string1 = params.fetch('string1')
  @string2 = params.fetch('string2')
  @stringerrors = ""
  if @string1.check_is_a_word?
    if @string2.check_is_a_word?
      @string1.clean_string #cleans the string
      @string2.clean_string #cleans the string

      @check_anagrams = @string1.check_anagrams(@string2)
      @check_palindrome = @string1.check_palindrome(@string2)
      @check_antigrams = @string1.check_antigrams(@string2)
    else
      @stringerrors = @string2.+(" is not a word")
    end
  else
    @stringerrors = @string1.+(" is not a word")
  end

  erb(:result)
end
