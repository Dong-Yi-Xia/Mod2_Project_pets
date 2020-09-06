class ApplicationController < ActionController::Base

    helper_method :logged_in_status, :current_user
    before_action :authorization? 

    def current_user
        @current_user ||= User.find_by(id: session[:user_id])
    end

    def logged_in_status
        !current_user.nil?
    end

    def authorization? 
        redirect_to login_path unless logged_in_status
        # if !logged_in_status
        #     redirect_to login_path
        # end
    end


end
