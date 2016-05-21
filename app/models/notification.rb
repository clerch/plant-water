require './lib/textmessage'

class Notification < ActiveRecord::Base

  belongs_to :user
  belongs_to :plant

  def send_notification
    if user.communication_method == "SMS"
      TextMessage.new.send_message(self)
      plant.last_date_watered = Date.today
      plant.save_next_water_date
      plant.save
    elsif user.communication_method == "email"
      #insert the method to send an email.
    else 
      return false
    end
  end
end