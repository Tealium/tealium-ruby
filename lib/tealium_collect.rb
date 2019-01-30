require 'uri'
require 'net/http'
require 'json'

class TealiumCollect
  LIBRARY_NAME = "ruby"
  LIBRARY_VERSION = "1.0.0"

  def self.collect(payload)
    uri = URI.parse("https://collect.tealiumiq.com/event")
    header = {'Content-type': 'application/json'}
    http = Net::HTTP.new(uri.host)
    request = Net::HTTP::Post.new(uri.request_uri, header)
    payload[:tealium_library_name] = LIBRARY_NAME
    payload[:tealium_library_version] = LIBRARY_VERSION

      request.body = payload.to_json
      response = http.request(request)

      #uncomment the line below for debugging
      #checkRequestResponse(response)
  end

  def checkRequestResponse(response)
    case response
    when Net::HTTPOK
      puts "Data sent to Tealum: " + response.message

    else
      puts "Error sending data: " + response.message

    end
  end
end
