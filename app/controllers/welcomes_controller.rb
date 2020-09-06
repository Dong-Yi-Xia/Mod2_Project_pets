class WelcomesController < ApplicationController
    skip_before_action :authorization?

    def home
       current_user
    end

end
