class ActivitiesController < ApplicationController
    before_action :set_activity, only: [:show, :edit, :update]

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
    end

    def edit
    end
    
    def update
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

    def set_activity
        @activity = Activity.find_by(id: params[:id])
        if !activity
            flash[:message] = "Activity was not found"
            redirect_to activities_path
        end
    end
end
