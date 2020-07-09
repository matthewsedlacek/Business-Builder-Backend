class UsersController < ApplicationController
    def index
        users = User.all
        render json: UserSerializer.new(users)
    end
    
    def show
        user = User.find_by(id: params[:id])
        render json: UserSerializer.new(user)
    end

    def create
        user = User.create(user_params)
        render json: UserSerializer.new(user)
    end

    def edit
        user = User.update(user_params)
        render json: UserSerializer.new(user)
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
        render json: {info: "Deleted"}
    end

    private
    def user_params
        params.require(:user).permit(:username, :first_name, :last_name, :zip)
    end
end
