require 'twilio-ruby'

class TwilioService
  attr_reader :client

  DEFAULT_FROM = '+441915804320'

  def initialize
    # this needs to go to a ENV var!
    account_sid = ''
    auth_token = ''
    @client = Twilio::REST::Client.new account_sid, auth_token
  end

  def send_sms(to:, message:)
    client.messages.create(from: DEFAULT_FROM, to: to, body: message)
  end
end
