module ExchangeInfo
  class Ticker
    def self.getData
      bitbay_USD_response = Request.get("/API/Public/BTCUSD/ticker.json", "bitbay")
      bitbay_EUR_response = Request.get("/API/Public/BTCEUR/ticker.json", "bitbay")
      blockain_response = Request.get("", "blockchain")
      return {
          "bitbay" => {
              "USD": bitbay_USD_response["last"],
              "EUR": bitbay_EUR_response["last"]
          },
          "blockchain" => {
              "USD": blockain_response["USD"]["last"],
              "EUR": blockain_response["EUR"]["last"]
          }
      }
    end
  end
end
