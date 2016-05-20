# require 'phony'

# Not used
# def convert_to_e164(raw_phone)
#   Phony.format(
#     raw_phone,
#     format: :international,
#     spaces: ''
#   ).gsub(/\s+/, "")
# end

post '/login' do
  @user = User.find_by(username: params[:username])
  puts "Looked for user #{params[:username]}, found user #{@user.id}: #{@user}"
  if @user && params[:password] == @user.password
    session["user_id"] = @user.id
    redirect "/plants/#{@user.id}"
  else
    erb :'index'
  end 
end

get '/plants/:id' do
  @user_plants = Plant.where(user_id: params[:id])
  erb :'plants/show'
end

get '/sign-out' do
  session.clear
  redirect '/'
end

delete '/plant-delete' do
  plant = Plant.find(params[:id])
  plant.destroy
  redirect(back)
end

post '/plant-update' do
  plant = Plant.find(params[:id])
  plant.custom_watering_frequency = params[:custom_watering_frequency]
  plant.save
  redirect(back)
end
