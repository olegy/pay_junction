module PayJunction
  class Client
    module Transactions

      def transaction(transaction_id)
        get("/transactions/#{transaction_id}")
      end

    end
  end
end
