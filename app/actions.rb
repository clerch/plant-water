# Homepage (Root path)
#requiring 'user_actions.rb'

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
  @plant_types = PlantType.all
  erb :'plants/index'
end

post '/plant-add' do
  @new_plant = Plant.create(
    user_id: session[:user_id],
    plant_type_id: params[:plant_type_id],
    custom_name: params[:custom_name],
    last_date_watered: params[:last_date_watered],
    custom_watering_frequency: params[:custom_watering_frequency]
    )
  #if @post validates, save
  if @new_plant.save
    if request.xhr?
      json @new_plant
    else
      redirect(back)
    end
  else
    #if it doesn't validate, print error messages
    erb(:"posts/new") 
  end
end



