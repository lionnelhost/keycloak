class ApplicationController < ActionController::Base
  include Keycloak
  protect_from_forgery with: :exception
  before_action :user_signed_in?, except: [:new, :create]

  def initialize
    Keycloak.proc_cookie_token = lambda do
      cookies.permanent[:keycloak_token]
    end

    super
  end

  def user_signed_in?
    access = Keycloak::Client.user_signed_in? || keycloak_controller? || new_use?
    if access 
      redirect_to root_path 
    else
      redirect_to sessions_new_path
    end 
    # redirect_to sessions_new_path unless access
  end

  private

    def keycloak_controller?
      Keycloak.keycloak_controller == controller_name
    end

    def new_use?
      controller_name == 'users' && (action_name == "new" || action_name == "create")
    end
end
