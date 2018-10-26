class ApplicationController < ActionController::Base
  rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|
      format.html {
        if current_user.visit?
          redirect_to dashboard_path
        elsif current_user.admin?
          redirect_to administration_path
        else
          redirect_to root_url
        end
        }
    end
  end

end
