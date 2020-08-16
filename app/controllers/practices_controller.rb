class PracticesController < ApplicationController

    def index
        if params[:user_id] && current_user = User.find_by_id(params[:user_id])
        @practices = current_user.practices
        else
            @practices = Practice.all
        end
    end

    # def new
    #     @practice = current_user.practice.new
    # end

    # def create
    #     @practice = current_user.practice.build(practice_params)
    #     if @practice.save
    #         redirect_to user_practices_path
    #     else
    #         render :new
    #     end
    # end

    private

    def practice_params
        params.require(:practice).permit(:date, :rating, :comments, :user_id, :activity_id)
    end
end
