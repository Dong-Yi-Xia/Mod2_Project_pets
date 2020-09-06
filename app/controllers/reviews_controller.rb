class ReviewsController < ApplicationController

    def index 
        @reviews = Review.all
    end
     
    def show 
        @review = Review.find(params[:id])
    end 
  
    def new
        @review = Review.new
    end 
  
    def create
        @review = @current_user.reviews.create(review_params)
        redirect_to user_path(@current_user)
    end 
  
    def edit
        byebug
        @review = Review.find(params[@current_user.id])
    end 
  
    def update
        @review 
        @review.update(review_params)
        redirect_to review_path(@review)
    end
  
    # def destroy
    #     @review = Review.find(params[:id])
    #     @review.delete 
    #     redirect_to reviews_path
    # end 
  
    private
  
    def review_params
        params.require(:review).permit(:rating, :content, :pet_id)
    end 


end
