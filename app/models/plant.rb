class Plant < ActiveRecord::Base

  belongs_to :plant_type
  belongs_to :user
  has_many :notifications


  def average_water_frequency
    ((plant_type.high_water_frequency + plant_type.low_water_frequency)/2).to_i
  end

  def next_water_date
    last_date_watered.advance(days: custom_watering_frequency)
  end

  def needs_watering?

    Date.today == (self.last_date_watered + self.custom_watering_frequency)
    
  end


  def create_notification

    Date.today >= next_water_date
  end
end
