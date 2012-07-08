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
    puts "*** END TWILIO ***\n"

    # Set the proper response header content-type
    response.headers["Content-Type"] = "text/xml"

    response = Twilio::TwiML::Response.new do |r|
      r.Sms "Echo: #{message_body}"
    end

    render :text => response.text
  end

end
