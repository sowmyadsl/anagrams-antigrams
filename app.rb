require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/anagrams-antigrams')


get('/') do
  erb(:index)
end
