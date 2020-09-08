class AdoptionsController < ApplicationController

    # def index 
    #     @adoptions = Adoption.all
    # end
     
    # def show 
    #     @adoption = Adoption.find(params[:id])
    # end 
  
    def new
        @adoption = Adoption.new
    end 
  
    def create
        @adoption = @current_user.adoptions.create(adoption_params)
        @pet = Pet.find_by(id: @adoption.pet_id)
        @pet.update(adoption_status: "no")
        redirect_to user_path(@current_user)
    end 
  
    # def edit
    #     @adoption = Adoption.find(params[:id])
    # end 
  
    # def update
    #     @adoption = Adoption.find(params[:id])
    #     @adoption.update(adoption_params)
    #     redirect_to user_path(@current_user)
    # end
  
    # def destroy
    #     @adoption = Adoption.find(params[:id])
    #     @adoption.delete 
    #     redirect_to adoptions_path
    # end 
  
    private
  
    def adoption_params
        params.require(:adoption).permit(:pet_id)
    end 

end
