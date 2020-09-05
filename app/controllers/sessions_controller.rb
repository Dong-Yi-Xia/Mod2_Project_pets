class SessionsController < ApplicationController

    skip_before_action :authorization?, only: [:new, :create]

      def new
        @error = flash[:error]
      end
      
      
      def create
        @user = User.find_by(name: params[:name])
        if @user && @user.authenticate(params[:password]) 
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            flash[:error] = "Incorrect name or password"
            redirect_to login_path
        end
      end
      

    def destroy
        session[:user_id] = nil
        redirect_to login_path
    end
    

end
