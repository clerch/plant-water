class TextMessage

  def initialize
    to_phone = user.phone
    message_content = message.content
  end

  def send_message(notification)
    
    client = Twilio::REST::Client.new(ENV['ACCOUNT_SID'], ENV['AUTH_TOKEN'])
    text_message = client.messages.create(
      from: ENV['COMPANY_PHONE'],
      to: to_phone
      body: message_body
    )
  end

  # def send_email
    # email sender might be a gem
  # end
end