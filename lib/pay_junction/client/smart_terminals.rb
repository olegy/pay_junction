module PayJunction
  class Client
    module SmartTerminals

      def request_payment(smart_terminal_id, options)
        post("/smartterminals/#{smart_terminal_id}/request_payment", options)
      end

    end
  end
end
