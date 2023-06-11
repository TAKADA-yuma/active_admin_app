class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?


    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
    end

    def basic_admin
        authenticate_or_request_with_http_basic do |username, password|
            username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
        end
    end
    def permitted_params
        params.permit(:submit => [:answer])
  
        # 以下の書き方だとエラーになる
        # param is missing or the value is empty: fruit
        # params.require(:fruit).permit(:name)
    end
end
