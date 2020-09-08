class UsersController < ApplicationController
    skip_before_action :authorization?, only: [:new, :create]
    # before_action 
    # determine what before_actions will be
    # skip_before_action :authorization?, only: [:login, :handle_login, :new, :create, :show]


    # def index
    #     @users = User.all
    # end
    

    def show  
        @user = User.find(params[:id])
    end 
  
    def new
        @errors = flash[:errors]
        @user = User.new
    end 
  
    def create
        @user = User.create(user_param)
        # byebug
        if @user.valid?
            session[:user_id] = @user.id
            # redirect_to controller: "welcomes", action: "home"
            redirect_to user_path(@user)
        else
            flash[:errors] = @user.errors.full_messages
            redirect_to signup_path
            # redirect_to new_user_path #error message afer this?
        end
    end 
  
    def edit
        @user = user.find(params[:id])
    end 
  
    def update
        if @user.update(user_param)
            redirect_to user_path(@user)
        else
            flash[:errors] = @user.errors.full_messages
            redirect_to edit_user_path
        end
    end
  
    def destroy
        @current_user.destroy
        redirect_to login_path
    end 
  
    private
    def get_user
        @user = User.find(params[:id])
    end

    def user_param
        params.require(:user).permit(:name, :password, :password_confirmation)
    end
end
