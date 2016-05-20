class Notification < ActiveRecord::Base

  belongs_to :user
  belongs_to :plant





  def self.test_sms

    @client = Twilio::REST::Client.new(ENV['ACCOUNT_SID'], ENV['AUTH_TOKEN'])
    message = @client.account.messages.create(
    body: 'Hello from the SKYNET!',
    to: '+16046174988',    # Replace with your phone number
    from: ENV['COMPANY_PHONE'])  # Replace with your Twilio number

    puts message.sid


  end




end