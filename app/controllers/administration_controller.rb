class AdministrationController < ApplicationController
  def index
    if current_user.admin?

    else
      redirect_to root_path
    end
  end
end
