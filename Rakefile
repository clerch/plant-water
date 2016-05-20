require 'rake'
require "sinatra/activerecord/rake"
require ::File.expand_path('../config/environment', __FILE__)
require './lib/users_importer'
require './lib/plant_types_importer'

Rake::Task["db:create"].clear
Rake::Task["db:drop"].clear

# NOTE: Assumes SQLite3 DB
desc "create the database"
task "db:create" do
  touch 'db/db.sqlite3'
end

desc "drop the database"
task "db:drop" do
  rm_f 'db/db.sqlite3'
end

desc 'Retrieves the current schema version number'
task "db:version" do
  puts "Current version: #{ActiveRecord::Migrator.current_version}"
end

#run this to text 

desc 'sends a test text to company phone'
task "plants:sms" do 
  Notification.test_sms
end


desc 'Sends a text message to a user with plants needing water'
task "plants:thirsty" do
  plants = Plant.all
  plants.each do |plant|
    if plant.needs_watering?
      plant.send_notification
    end
  end  
end

desc 'populate the database with data'
task 'db:populate' do
  # AppConfig.establish_connection
  UsersImporter.new.import
  PlantTypesImporter.new.import
  # Invoke your TeachersImporter here
end
