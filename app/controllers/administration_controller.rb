class AdministrationController < ApplicationController
  before_action :authenticate_user!
  def index

    # authorize! :administration, :logs
    # if current_user.admin?
    #
    # else
    #   redirect_to root_path
    # end
  end
end
