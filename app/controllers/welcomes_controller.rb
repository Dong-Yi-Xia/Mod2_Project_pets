class WelcomesController < ApplicationController
    skip_before_action :authorization?

    def home
    end

end
