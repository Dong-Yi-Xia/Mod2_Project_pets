class RentsController < ApplicationController

    # def index 
    #     @rents = Rent.all
    # end
     
    # def show 
    #     @rent = Rent.find(params[:id])
    # end 
  
    def new
        @rent = Rent.new
    end 
  
    def create
        @rent = @current_user.rents.create(rent_params)
        redirect_to user_path(@current_user)
    end 
    
    def edit
        @rent = Rent.find(params[:id])
    end 
  
    def update
        @rent = Rent.find(params[:id])
        @rent.update(rent_params)
        redirect_to user_path(@current_user)
    end
  
    def destroy
        @rent = Rent.find(params[:id])
        @rent.delete 
        redirect_to user_path(@current_user)
    end 
  
    private
  
    def rent_params
        params.require(:rent).permit(:location, :duration, :pet_id)
    end 

end
