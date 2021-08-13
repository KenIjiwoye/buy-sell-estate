class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected
  
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:account_update, keys: [:firstName, :lastName, :middleName, :title, :about, :workPhone, :mobilePhone, :email, :skype, :facebook, :twitter, :instagram, :youtube, :pinterest])
    end
end
