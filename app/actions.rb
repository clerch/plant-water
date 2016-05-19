# Homepage (Root path)
#requiring 'user_actions.rb'

require_relative 'user_actions'

get '/' do
  erb :index
end

get '/all-plants' do
  @plant_types = PlantType.all
  erb :'plants/index'
end

