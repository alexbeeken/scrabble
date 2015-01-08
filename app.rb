require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/scrabble')


get ('/') do
  erb(:scrabble_form)
end

get ('/scrabble_results') do

  @score = params.fetch('word').scrabble
  erb(:scrabble_results)
end
