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
end
