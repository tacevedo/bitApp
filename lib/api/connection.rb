require 'faraday'
require 'json'

class Connection
  def self.api(exchange_name)
    exchangesAvailable = {
      'blockchain' => 'https://blockchain.info/es/ticker',
      'bitbay' => 'https://bitbay.net'
    };
    Faraday.new(url: exchangesAvailable[exchange_name]) do |faraday|
      faraday.response :logger
      faraday.adapter Faraday.default_adapter
      faraday.headers['Content-Type'] = 'application/json'
    end
  end
end
