class ApplicationController < ActionController::Base
    
    def basic_admin
        authenticate_or_request_with_http_basic do |username, password|
            username == ENV["admin"] && password == ENV["2222"]
        end
    end
end
