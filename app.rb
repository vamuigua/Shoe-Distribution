#used bundler to require all gems
require("bundler/setup")
Bundler.require(:default)
also_reload("lib/**/*.rb")
#__FILE__ refers to the current file, and File.dirname(__FILE__) will give the current directory
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }
####### INDEX ROUTE ########
get('/') do
  erb(:index)
end

####### GET STORES ROUTE #######
get('/stores') do
  @stores = Store.all
  erb(:stores)
end

##### GET STORE'S SPECIFIC ID#####
get('/store/:id') do
  @store = Store.find(params.fetch("id").to_i)
  @shoes = Shoe.all
  @brands = Brand.all
  erb(:store)
end

####### POST STORES ROUTE #######
post('/stores') do
  name = params.fetch("name")
  location = params.fetch("location")
  contact = params.fetch("contact")
  store = Store.new({:name => name,:location => location,:contact => contact})
  if store.save()
    redirect '/stores'
  else
    redirect '/error'
  end
end

###### ROUTE TO EDIT FORM STORE ################
get('/stores/:id/edit') do
  @store = Store.find(params.fetch("id").to_i)
  erb(:store_edit)
end

######### UPDATE STORE DETAILS ##############
patch('/stores/:id') do
  @store = Store.find(params.fetch("id").to_i)
  @store.update(name: params.fetch("name"))
  erb(:store)
end

########  DELETE STORES ##########
delete('/stores/:id') do
  @stores = Store.all
  @store = Store.find(params.fetch("id").to_i)
  @store.destroy
  erb(:stores)
end

####### GET BRANDS ROUTE #######
get('/brands') do
  @brands = Brand.all
  erb(:brands)
end

##### GET BRAND'S SPECIFIC ID#####
get('/brands/:id') do
  @brand = Brand.find(params.fetch("id").to_i)
  erb(:brand)
end

####### POST BRANDS ROUTE #######
post('/brands') do
  name = params.fetch("name")
  brand = Brand.new({:name => name})
  if brand.save()
    redirect '/brands'
  else
    redirect '/error'
  end
end

####### GET SHOE ROUTE #######
get('/shoes') do
  @shoes = Shoe.all
  erb(:shoes)
end

##### GET SHOE'S SPECIFIC ID#####
get('/shoes/:id') do
  @shoe = Shoe.find(params.fetch("id").to_i)
  erb(:shoe)
end

####### POST SHOES ROUTE #######
post('/shoes') do
  name = params.fetch("name")
  shoe = Shoe.new({:name => name})
  if shoe.save()
    redirect '/shoes'
  else
    redirect '/error'
  end
end
