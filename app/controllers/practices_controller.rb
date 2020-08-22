class PracticesController < ApplicationController
    before_action :set_practice, only: [:show, :edit, :update]

    def index
        if params[:user_id] && @user = User.find_by_id(params[:user_id])
            @practices = @user.practices
        else
            @practices = Practice.all
        end
    end

    def new
        if params[:user_id] && @user = User.find_by_id(params[:user_id])
            @practice = @user.practices.build
        else
            @practice = Practice.new
        end
    end

    def create
        @practice = current_user.practices.build(practice_params)
        if @practice.save
            redirect_to practices_path
        else
            render :new
        end
    end

    def show
    end

    def edit
    end

    def update
        if @practice.update(practice_params)
            redirect_to practice_path(@practice)
        else
            render :edit
        end
    end

    private

    def practice_params
        params.require(:practice).permit(:date, :rating, :comment, :user_id, :activity_id)
    end

    def set_practice
        @practice = Practice.find_by(id: params[:id])
        if !@practice
          flash[:message] = "Practice was not found"
          redirect_to practices_path
        end
      end
end
