class TextMessage



  def send_message(notification)
    
    client = Twilio::REST::Client.new(ENV['ACCOUNT_SID'], ENV['AUTH_TOKEN'])
    text_message = client.messages.create(
      from: ENV['COMPANY_PHONE'],
      to: notification.user.phone,
      body: notification.message_content
    )
  end

  # def send_email
    # email sender might be a gem
  # end
end