class UsersController < ApplicationController
    # before_action 
    # determine what before_actions will be

    # def index
    #     @users = User.all
    # end
    # # Do we need index method? 

    # def show  
    #     @user = User.find(params[:id])
    # end 
  
    # def new
    #     @errors = flash[:errors]
    #     @user = User.new
    # end 
  
    # def create
    #     @user = User.create(user_param)
    #     if @user.valid?
    #         # Do we need sessions? --> session[:user_id] = @user.id
    #         redirect_to user_path(@user)
    #     else
    #         flash[:errors] = @user.errors.full_messages
    #         redirect_to new_user_path #error message afer this?
    #     end
    # end 
  
    # def edit
    #     @user = user.find(params[:id])
    # end 
  
    # def update
    #     if @user.update(user_param)
    #         redirect_to user_path(@user)
    #     else
    #         flash[:errors] = @user.errors.full_messages
    #         redirect_to edit_user_path
    #     end
    # end
  
    # def destroy
    #     @user = user.find(params[:id])
    #     @user.delete 
    #     redirect_to users_path
    # end 
  
    # private
    # def get_user
    #     @user = User.find(params[:id])
    # end

    # def user_param
    #     params.require(:user).permit(:name)
    # end
end