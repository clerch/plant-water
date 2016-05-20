# Homepage (Root path)
#requiring 'user_actions.rb'

require_relative 'user_actions'

helpers do 
  def current_user
    User.find_by(id: session[:user_id])
  end
end

get '/' do
  erb :index
end

get '/all-plants' do
  @plant_types = PlantType.all
  erb :'plants/index'
end

post '/add-plant' do
  @new_plant = Plant.create(
    user_id: current_user.id,
    plant_type_id: params[:plant_type_id],
    custom_name: params[:custom_name],
    last_date_watered: params[:last_date_watered],
    custom_watering_frequency: params[:custom_watering_frequency]
    )
  #if @post validates, save
  if @new_plant.save
    redirect(back)
  else
    erb(:"plants/all-plants") 
  end
end



