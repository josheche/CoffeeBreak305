class TwilioClient
  def self.send_text_message(order)
    runner = Runner.all.sample
    !runner ? (return 'No runner\'s avaliable' ) : nil
    number_to_send_to = runner.phone

    if Rails.env.test? || Rails.env.development?
      twilio_num = "3054400524"
    else
      twilio_num = ENV['TWILIO_NUM']
    end

    @client = Twilio::REST::Client.new
    @client.account.messages.create({
      :from => "+1#{twilio_num}",
      :to => '3058048507',
      :body => 'Yo go get coffe',
    })
    #puts "Sent message to #{runner.name}"
  end
end
