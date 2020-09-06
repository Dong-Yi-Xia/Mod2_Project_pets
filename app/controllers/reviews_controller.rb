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
        @review = Review.create(review_params)
        redirect_to review_path(@review)
    end 
  
    def edit
        @review = Review.find(params[:id])
    end 
  
    def update
        @review = Review.find(params[:id])
        @review.update(review_params)
        redirect_to review_path(@review)
    end
  
    def destroy
        @review = Review.find(params[:id])
        @review.delete 
        redirect_to reviews_path
    end 
  
    private
  
    def review_params
        params.require(:review).permit(:rating, :content)
    end 


end
