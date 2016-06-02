require "pay_junction/client/connection"

require "pay_junction/client/smart_terminals"
require "pay_junction/client/transactions"

module PayJunction
  class Client

    include HTTParty

    debug_output $stdout

    include PayJunction::Client::Connection
    include PayJunction::Client::SmartTerminals
    include PayJunction::Client::Transactions

    TEST_URL = "https://api.payjunctionlabs.com"
    LIVE_URL = "https://api.payjunction.com"

    format :json

    def initialize(options)
      self.class.base_uri (options.has_key?(:test) && options[:test] ? TEST_URL : LIVE_URL)

      auth = { username: options[:login], password: options[:password] }
      app_key = options[:app_key].to_s
      self.class.default_options.merge!(basic_auth: auth, headers: { 'X-PJ-Application-Key' => app_key })
    end

  end
end