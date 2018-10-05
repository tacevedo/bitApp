class DashboardController < ApplicationController
  def index
    if current_user
      
    else
      redirect_to root_path
    end
  end
end
