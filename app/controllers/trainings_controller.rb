class TrainingsController < ApplicationController
    def index
         #    if the training is nested/associated with an activity, then trainings set equal to activity.trainings
        if params[:activity_id] && Activity.find_by_id(params[:activity_id])
            @trainings = @activity.trainings
        else
            @trainings = Training.all
        end
    
    end

    def new
        # if it's nested under an activity AND the activity exists in the database, then training instance will be built in conjunction with that parent activity as part of has_many relationship
        if params[:actvity_id] && Activity.find_by_id(params[:activity_id])
            @training = @activity.trainings.build
        # Otherwise, a new training created per usual
        else
        @training = Training.new
        # @training.build_activity
        # belongs_to - nested form
        end 
    end

    def create
        # if the training is nested/associated with an activity, then the training instance is set to be built with the parent activity
        # otherwise, create a training instance as usual
    end

    def show
        @training = Training.find_by(id: params[:id])
    end

    def edit
        @training = Training.find_by(id: params[:id])
    end

    def update
        @training = Training.find_by(id: params[:id])
        if @training.update(training_params)
            redirect_to training_path(@training)
        else
            render :edit
        end
    end

    def destroy
        @training = Training.find_by(id: params[:id])
        @training.destroy
        redirect_to trainings_path
    end

    private

    def training_params
        params.require(:training).permit(:date, :notes)
    end

end
