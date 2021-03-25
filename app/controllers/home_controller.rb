class HomeController < ApplicationController 
    def index
        @user = JSON.parse Keycloak::Client.get_userinfo
    end
end 