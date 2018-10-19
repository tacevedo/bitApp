class ApplicationController < ActionController::Base
  rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|
      format.html { redirect_to root_url, alert: exception.message }
    end
  end
  def after_sign_in_path_for(resource)
    if current_user.admin?
      administration_path
    else
      dashboard_path
    end

  end
end
