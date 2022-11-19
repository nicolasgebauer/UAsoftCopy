class ApplicationController < ActionController::Base
    skip_before_action :verify_authenticity_token
    
    before_action :configure_permitted_parameters, if: :devise_controller?
    def after_sign_in_path_for(resource)
        productos_path
    end

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :last_name])
    end
end