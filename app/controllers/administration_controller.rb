class AdministrationController < ApplicationController

  def index
    authorize! :admin, :administration
    # authorize! :administration, :logs
    # if current_user.admin?
    #
    # else
    #   redirect_to root_path
    # end
  end
end
