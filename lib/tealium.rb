require 'tealium_collect'

class Tealium
  attr_accessor :account, :profile, :datasource
  def initialize(account, profile, datasource = nil)
    @account = account
    @profile = profile
    @datasource = datasource
  end

  def track(event_name, custom_data = {})
    data = Hash.new
    data[:tealium_account] = @account
    data[:tealium_profile] = @profile

    if (!@datasource.nil?)
      data[:tealium_datasource]
    end

    data[:tealium_event] = event_name
    payload = data.merge(custom_data)
    TealiumCollect.collect(payload)
  end
end
