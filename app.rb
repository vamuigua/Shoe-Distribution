require "sinatra/activerecord"
require "sinatra"
require "sinatra/reloader"
also_reload "lib/**/*.rb"
require('pg')
require('pry')

####### INDEX ROUTE ########
get('/') do
  erb(:index)
end
