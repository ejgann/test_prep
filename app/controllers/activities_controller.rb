class ActivitiesController < ApplicationController

    def index
        @activities = Activity.all
    end

    def new
        @activity = Activity.new
    end

    def create
        @activity = current_user.activities.build(activity_params)
        if @activity.save
            redirect_to activities_path
        else
            render :new
        end
    end

    def show
        @activity = Activity.find_by(id: params[:id])
    end

    def edit
        @activity = Activity.find_by(id: params[:id])
    end
    
    def update
        @activity = Activity.find_by(id: params[:id])
        if @activity.update(activity_params)
            redirect_to activity_path(@activity)
        else
            render :edit
        end
    end

    def destroy
        @activity = Activity.find_by(id: params[:id])
        @activity.destroy 
        redirect_to activities_path
    end

    private

    def activity_params
        params.require(:activity).permit(:name, :time_required, :user_id)
    end
end
