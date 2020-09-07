class PetsController < ApplicationController
    skip_before_action :authorization?, only: [:index]

    def index 
        @pets = Pet.all
    end
     
    def show 
        @pet = Pet.find(params[:id])
    end 
  
    def new
        @pet = Pet.new
    end 
    # Do we need to allow user to create a new pet?
  
    def create
        @pet = Pet.create(pet_params)
        redirect_to pet_path(@pet)
    end 
     # Do we need to allow user to create a new pet?
  
    def edit
        @pet = Pet.find(params[:id])
    end 
  
    def update
        @pet = Pet.find(params[:id])
        @pet.update(pet_params)
        redirect_to pet_path(@pet)
    end
  
    # def destroy
    #     @pet = Pet.find(params[:id])
    #     @pet.delete 
    #     redirect_to projects_path
    # end 
    # LOL, we don't want to destroy pets!
  
    private
  
    def pet_params
        params.require(:pet).permit(:name, :species, :gender, :bio)
    end
     
end
