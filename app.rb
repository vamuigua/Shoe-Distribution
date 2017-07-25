#used bundler to require all gems
require("bundler/setup")
#__FILE__ refers to the current file, and File.dirname(__FILE__) will give the current directory
Bundler.require(:default)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }


####### INDEX ROUTE ########
get('/') do
  erb(:index)
end

####### BRANDS ROUTE #######
get('/brands') do
  @brands = Brand.all
  erb(:brands)
end

####### SHOE ROUTE #######
get('/shoes') do
  @shoes = Shoe.all
  erb(:shoes)
end

####### STORES ROUTE #######
get('/stores') do
  @stores = Store.all
  erb(:stores)
end
