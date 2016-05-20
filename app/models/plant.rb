class Plant < ActiveRecord::Base

  belongs_to :plant_type
  belongs_to :user
  has_many :notifications


  def average_water_frequency
    ((plant_type.high_water_frequency + plant_type.low_water_frequency)/2).to_i
  end


  def needs_watering?
    Date.today == (self.last_date_watered + self.custom_watering_frequency)
    
  end


  def create_notification
    message_body = "#{custom_name} needs to be watered!"
 #another way would be to add communication type to the notificaiton method and 
 #notification type (marketing, plant reminder, friend reference)   
 #the function below won't work because it's not calling the method.
 #duplicate storage of message_body.
 #   Textmessage.new(message: message_body)
    # TODO: only do the following when the twilio call works out well
    #Notification.send_sms

      client = Twilio::REST::Client.new(ENV['ACCOUNT_SID'], ENV['AUTH_TOKEN'])
      text_message = client.messages.create(
      from: ENV['COMPANY_PHONE'],
      to: user.phone,
      body: message_body
    )
    Notification.new(user_id: user.id, message: message_body)
  end

end