class DashboardController < ApplicationController

  def index
    authorize! :visit, :dashboard
    # authorize! :dashboard, :logs
    # if current_user.visit?
    #
    # else
    #   redirect_to root_path
    # end
  end

  def info
    dataGrafico = []
    exchanges = @Exchanges.all
    #filtrar por las ultimas diez fechas
    ultimosDiezDias = @Historic.all.map( )

    #filtrar - todas los datos de cada uno de los Exchanges, ahi dentro armar:

    # armar el objeto de ese echange, haciendo el array con valores en determinada fecha
    historial.each do |datos|
      obj = {
        :name = dato.exchange.name,

      }
    end
  end
end
