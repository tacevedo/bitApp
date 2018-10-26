class DashboardController < ApplicationController
  # authorize_resource :only => [:index]
  before_action :authenticate_user!
  def index

    # authorize! :dashboard, :logs
    # if current_user.visit?
    #
    # else
    #   redirect_to root_path
    # end
    # @users = User.all
    # @currencies = Currency.all
    # @exchanges = Exchange.all
    # @users = Historic.all
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
