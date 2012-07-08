class TwilioController < ApplicationController
  def index
    # A post will end up here; fetch the Body and From
    # From shouldn't matter either
    # Twilio will get the post response, which should
    # hold the TwiML and instruct Twilio how to respond
    message_body = params["Body"]
    from_number = params["From"]

    puts "*** TWILIO ***\n"
    puts "BODY: "
    puts message_body
    puts "\n"
    puts "FROM: "
    puts from_number
  end

  # This is actually probably unnecessary:
  def send_text_message
    number_dest = params[:number_to_send_to]

    configfile = "twilio.config"
    File.open( configfile).each do |line|
      # Config file should have form:
      # sid: <sid>
      # token: <token>
      # num: <phone number>
      if line.start_with?("sid") 
        twilio_sid = line[5..-1]
      elsif line.start_with?("token")
        twilio_token = line[7..-1]
      elsif line.start_with?("num")
        twilio_phone_number = line[5..-1]
      end

        
    twilio_sid = "fill in"
    twilio_token = "fill in"
    twilio_phone_number = "fill in"

    @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token

    @twilio_client.account.sms.messages.create(
      :from => "+1#{twilio_phone_number}",
      :to => number_dest,
      :body => "This is a message sent to #{number_dest}"
    )
    end
  end
end
