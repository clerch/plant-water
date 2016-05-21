require_relative 'user_actions'

helpers do 
  def current_user
    User.find_by(id: session[:user_id])
  end

  def user_plants
    Plant.where(user_id: session[:user_id])
  end
end

get '/' do
  erb :index
end

get '/all-plants' do
  @plant_types = PlantType.all.order(common_name: :asc)
  erb :'plants/index'
end


