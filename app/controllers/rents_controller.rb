class RentsController < ApplicationController

    def index 
        @rents = Rent.all
    end
     
    def show 
        @rent = Rent.find(params[:id])
    end 
  
    def new
        @rent = Rent.new
    end 
  
    def create
        @rent = Rent.create(rent_params)
        redirect_to rent_path(@rent)
    end 
  
    def edit
        @rent = Rent.find(params[:id])
    end 
  
    def update
        @rent = Rent.find(params[:id])
        @rent.update(rent_params)
        redirect_to rent_path(@rent)
    end
  
    def destroy
        @rent = Rent.find(params[:id])
        @rent.delete 
        redirect_to rents_path
    end 
  
    private
  
    def rent_params
        params.require(:rent).permit(:location, :duration)
    end 

end
