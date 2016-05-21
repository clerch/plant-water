

post '/login' do
 
 @user = User.find_by(username: params[:username])
  
  if @user && params[:password] == @user.password && @user.plants.size > 0
    session["user_id"] = @user.id
    @user_plants = @user.plants
    redirect "/plants"
  elsif @user && params[:password] == @user.password && @user.plants.size == 0
    session["user_id"] = @user.id
    @user_plants = @user.plants
    redirect "/all-plants"
  
  else
    erb :'index'
  end
end

get '/sign-out' do
  session.clear
  redirect '/'
end

get '/plants' do
  @user_plants = Plant.where(user_id: session["user_id"]).order(next_water_date: :asc)
  erb :'plants/show'
end

delete '/plant-delete/:id' do
  plant = Plant.find(params[:id])
  plant.destroy
end

post '/plant-update' do
  @plant = Plant.find_by(id: params[:plant_id])
  @plant.update(
    custom_name: params[:custom_name],
    custom_watering_frequency: params[:custom_watering_frequency]
    )
  
  @plant.calculate_next_water_date
  @plant.save
  redirect(back)
end

post '/update-last-date-watered'
  @plant = Plant.find_by(id: params[:plant_id])
  @plant.update(
    last_date_watered: Date.today
    )   
end

post '/plant-add' do
  @new_plant = Plant.new(
    user_id: session[:user_id],
    plant_type_id: params[:plant_type_id],
    custom_name: params[:custom_name],
    last_date_watered: params[:last_date_watered],
    custom_watering_frequency: params[:custom_watering_frequency]
  )
  @new_plant.calculate_next_water_date
  @new_plant.save
  #if @new_plant validates, save
  if @new_plant.save
    if request.xhr?
      json  :plant => {  new_plant:  @new_plant, 
                         common_name: @new_plant.plant_type.common_name
                      }
    else
      redirect(back)
    end
  else
    erb :'plants/show'
  end
end

