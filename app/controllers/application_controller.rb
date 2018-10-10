class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    if current_user.admin?
      administration_path  
    else
      dashboard_path
    end

  end
end
