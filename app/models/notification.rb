class Notification < ActiveRecord::Base

  belongs_to :user




  def notification_not_sent?
    
  end

#notification_not_sent? || 
  def send_notification?
    if (Date.today == last_date_watered + custom_watering_frequency)
      #create notification log
      #send notification with Twilio
      # and then you can create a new client without parameters
      message_body = message
      client = Twilio::REST::Client.new(ENV['ACCOUNT_SID'], ENV['AUTH_TOKEN'])
      message = client.messages.create(
        from: ENV['COMPANY_PHONE'],
        to: user.phone,
        body: 'Hey there!'
      )
    else
      return false
    end
  end

  def self.test_sms

    @client = Twilio::REST::Client.new(ENV['ACCOUNT_SID'], ENV['AUTH_TOKEN'])
    message = @client.account.messages.create(
    body: 'Hello from the SKYNET!',
    to: '+16046174988',    # Replace with your phone number
    from: ENV['COMPANY_PHONE'])  # Replace with your Twilio number

    puts message.sid


  end




end