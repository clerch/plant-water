require 'phony'

# Not used
# def convert_to_e164(raw_phone)
#   Phony.format(
#     raw_phone,
#     format: :international,
#     spaces: ''
#   ).gsub(/\s+/, "")
# end

# post '/login' do
#   @user = User.find_by(username: params[:username])
#   if @user && params[:password] == @user.password
#     session["user_id"] = @user.id
#     redirect "/plants/#{@user.id}"
#   else
#     erb :'index'
#   end 
# end

post '/login' do
 @user = User.find_by(username: params[:username])
  if @user && params[:password] == @user.password && @user.plants.size > 0
    session["user_id"] = @user.id
    @user_plants = @user.plants
    redirect "/plants/#{@user.id}"
  elsif @user && params[:password] == @user.password && @user.plants.size == 0
    session["user_id"] = @user.id
    @user_plants = @user.plants
    redirect "/all-plants"
  else
    erb :'index'
  end
end



get '/plants' do
  @user_plants = Plant.where(user_id: session["user_id"])
  erb :'plants/show'
end

get '/sign-out' do
  session.clear
  redirect '/'
end

delete '/plant-delete/:id' do
  plant = Plant.find(params[:id])
  plant.destroy
end

post '/plant-update' do
  plant = Plant.find(params[:id])
  plant.custom_watering_frequency = params[:custom_watering_frequency]
  plant.save
  redirect(back)
end


