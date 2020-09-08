class WelcomesController < ApplicationController
    skip_before_action :authorization?

    def home
       current_user
       @pets = Pet.all
    end

    def about
        current_user
    end

    def contact 
        current_user
    end

end
