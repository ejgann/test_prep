class PracticesController < ApplicationController

    def index
        @practices = current_user.practices.all
    end

    def new
        @practice = current_user.practices.build
    end

    def create
        @practice = current_user.practices.build(practice_params)
        if @practice.save
            flash[:notice] = "Successfully created practice."
            redirect_to user_practices_path
        else
            render :new
        end
    end

    private

    def practice_params
        params.require(:practice).permit(:date, :rating, :comments, :user_id, :activity_id)
    end
end
