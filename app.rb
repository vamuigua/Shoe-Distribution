#used bundler to require all gems
require("bundler/setup")
#__FILE__ refers to the current file, and File.dirname(__FILE__) will give the current directory
Bundler.require(:default)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }


####### INDEX ROUTE ########
get('/') do
  erb(:index)
end
