### PayJunction ruby client library

Client library for talking to [PayJunction API](https://developer.payjunction.com/hc/en-us). Just several endpoints supported for now:
  - Smart Terminal
  - Transactions (GET)

#### Usage

First of all, initialize client:

```ruby
client = PayJunction::Client.new(:login => "YOUR_LOGIN", :password => "YOUR_PASSWORD", :app_key => "YOUR_APP_KEY")
```

Use `test: true` option when initializing client to communicate with PayJunction Test server.


And then talk to API:

```ruby
client.transaction(42)
```