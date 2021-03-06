class UsersController < ApplicationController
    def index
        users = User.all
        render json: users 
    end
  
    def show
        user = User.find_by(id: session[:user_id])
        render json: user
    end
  
    def create
        user = User.create!(user_params)
        session[:user_id] = user.id
        render json: user, status: :created   
    end
  
    def update
        user = User.find_by(id: session[:user_id])
        user.update!(user_params)
        render json: user, status: :accepted
        
    end
  
    def destroy
        user = User.find_by(id: session[:user_id])
        user.destroy
        head :no_content
    end
    
    private
        
    def user_params
        params.permit(:username, :password, :first_name, :last_name, :about_me, :image, :over_eighteen)
    end

end
