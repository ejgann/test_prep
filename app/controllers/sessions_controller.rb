class SessionsController < ApplicationController
    def index
    end

    def new
    end

    def create
        @user = User.find_by(username: params[:user][:username])
        if @user && @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id
            redirect_to root_path
        else
            flash[:message] = "Incorrect login info. Please try again."
            redirect_to login_path
        end
    end

    def omniauth
        @user = User.omniauth(auth)
        @user.save
        session[:user_id] = @user.id
        redirect_to root_path
    end

    def destroy
        session.clear
        redirect_to root_path
    end

    private

    def auth
        request.env['omniauth.auth']
    end

end