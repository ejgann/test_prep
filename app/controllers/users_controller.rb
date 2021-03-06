class UsersController < ApplicationController
    skip_before_action :redirect_if_not_logged_in, only: [:new, :create]

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.valid?
            @user.save
            session[:user_id] = @user.id
            redirect_to root_path
        else
            render :new
        end
    end

    def show
        @user = User.find_by(id: params[:id])
        redirect_to '/' if !@user
    end

    private

    def user_params
        params.require(:user).permit(:username, :email, :password)
    end

end
