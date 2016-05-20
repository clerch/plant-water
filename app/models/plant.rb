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
    Date.today >= next_water_date
  end

  def send_notification
    message_body = "#{custom_name} needs to be watered!"

    client = Twilio::REST::Client.new(ENV['ACCOUNT_SID'], ENV['AUTH_TOKEN'])
    text_message = client.messages.create(
      from: ENV['COMPANY_PHONE'],
      to: user.phone,
      body: message_body
    )
    # TODO: only do the following when the twilio call works out well
    Notification.new(user_id: user.id, message: message_body)
  end

end