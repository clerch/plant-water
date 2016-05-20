class Notification < ActiveRecord::Base

  belongs_to :user
  belongs_to :plant


  def check_watering_needs
    plants = Plant.all
    plants.each do |plant|
      if plant.needs_watering?
        send_notification
      end
    end  
  end

  def send_notification
    if user.communication_method == "sms"
      TextMessage.new.send_message
    elsif user.communication_method == "email"
      #insert the method to send an email.
    else 
      return false
    end
  end
end