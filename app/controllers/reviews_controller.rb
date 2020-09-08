class ReviewsController < ApplicationController

    def index 
        @reviews = Review.all
    end
     
    def show 
        @review = Review.find(params[:id])
    end 
  
    def new
        @review = Review.new
        @errors = flash[:errors]
    end 
  
    def create
        @review = @current_user.reviews.create(review_params)
        if @review.valid?
            redirect_to user_path(@current_user)
        else
            flash[:errors] = @review.errors.full_messages[0]
            redirect_to new_review_path
        end
    end 

    # def create 
    #     @review = Review.new(review_params)
    #     if @review.save 
    #         redirect_to "/pets/#{pet.id}"
    #     else
    #         flash.now[:notice] = "One or more fields is blank."
    #         render :new
    #     end
    # end
  
    def edit
        @review = Review.find(params[:id])
    end 
  
    def update
        @review = Review.find(params[:id])
        @review.update(review_params)
        redirect_to user_path(@current_user)
    end
  
    def destroy
        @review = Review.find(params[:id])
        @review.destroy
        redirect_to reviews_path
    end 
  
    private
  
    def review_params
        params.require(:review).permit(:rating, :content, :pet_id)
    end 


end
