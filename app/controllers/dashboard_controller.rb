class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index

    @currencies = Currency.pluck(:name, :id)
    @exchanges = Exchange.pluck(:name, :id)
    # @users = Historic.all

    # buscar el historic donde este currenciix  exchangeid
    # @result = Historic.all.where("exchangeid == :ex_id AND currencyid == :curr_id", {ex_id: @exchange.id, curr_id: @currency.id})

  end

  def exchange_data
      @data = ExchangeInfo::Ticker.getData()
      render json: @data
  end

  def info
    dataGrafico = []
    # exchanges = @Exchanges.all
  # historia = {}
  # historia.date = Time.now
    puts Time.now
    #filtrar por las ultimas diez fechas
    # ultimosDiezDias = @Historic.all.map do |h|
    #
    # end


    #filtrar - todas los datos de cada uno de los Exchanges, ahi dentro armar:

    # armar el objeto de ese echange, haciendo el array con valores en determinada fecha
    # historial.each do |datos|
    #   obj = {
    #     :name = dato.exchange.name,
    #
    #   }
    # end
  end
end
