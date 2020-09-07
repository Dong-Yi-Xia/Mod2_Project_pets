class AdoptionsController < ApplicationController

    def index 
        @adoptions = Adoption.all
    end
     
    def show 
        @adoption = Adoption.find(params[:id])
    end 
  
    def new
        @adoption = Adoption.new
    end 
  
    def create
        @adoption = @current_user.adoptions.create(adoption_params)
        redirect_to adoption_path(@adoption)
    end 
  
    def edit
        @adoption = Adoption.find(params[:id])
    end 
  
    def update
        @adoption = Adoption.find(params[:id])
        @adoption.update(adoption_params)
        redirect_to adoption_path(@adoption)
    end
  
    def destroy
        @adoption = Adoption.find(params[:id])
        @adoption.delete 
        redirect_to adoptions_path
    end 
  
    private
  
    def adoption_params
        params.require(:adoption).permit(:status, :pet_id)
    end 

end
