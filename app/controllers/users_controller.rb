# user controller
require 'rest-client'
class UsersController < ApplicationController
    def new
        @user = User.new
    end
  
    def create
      after_insert = lambda { |_user|
        flash[:success] = 'User created successfully'
        redirect_to root_path
      }

      Keycloak::Internal.create_simple_user(params[:user][:email],
                                            params[:user][:password],
                                            params[:user][:email],
                                            params[:user][:first_name],
                                            params[:user][:last_name],
                                            [],
                                            ['Public'],
                                            after_insert)
    end
  end