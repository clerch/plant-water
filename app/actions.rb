# Homepage (Root path)
get '/' do
  erb :index
end

get '/all-plants' do
  @plant_types = PlantType.all
  erb :'plants/index'
end