class Plant < ActiveRecord::Base

  belongs_to :plant_type
  belongs_to :user
  has_many :notifications


  def self.check_watering_needs
    plants = Plant.all.where("next_water_date <= ?", Date.today)
    puts "found this many #{plants.length}"
    plants.each do |plant|
        notification = Notification.create(user_id: plant.user.id, plant_id: plant.id, message_content: "#{plant.custom_name} needs watering!")
        notification.send_notification
    end  
  end 

  def average_water_frequency
    ((plant_type.high_water_frequency + plant_type.low_water_frequency)/2).to_i
  end

  def next_water_date
    last_date_watered.advance(days: custom_watering_frequency)
  end

  def needs_watering?
    Date.today >= next_water_date    
  end

end
