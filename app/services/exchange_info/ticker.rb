module ExchangeInfo
    class Ticker
        def self.getData
            bitbay_USD_response = Request.get("/API/Public/BTCUSD/ticker.json", "bitbay")
            bitbay_EUR_response = Request.get("/API/Public/BTCEUR/ticker.json", "bitbay")

            blockain_response = Request.get("", "blockchain")

            # EN ESTA PARTE CON LOS DATOS DE LA RESPUESTA , POR EJEMPLO 
            # bitbay_USD_response["last"] GUARDAR ESOS DATOS EN EL/LOS MODELOS QUE CORRESPONDA 
            # CON LA FECHA DE HOY Y CON EL NOMBRE DEL CURRENCY (USD EN ESTE CASO) 
            # LO IDEAL SERÍA QUE CUANDO METAS DATA FALSA A MANO USANDO rails c guardes 
            # los Historics.new y despues los uses acá de la misma manera

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
