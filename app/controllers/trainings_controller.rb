class TrainingsController < ApplicationController
    def index
         #    if the training is nested/associated with an activity, then trainings set equal to activity.trainings
        if params[:activity_id] && @activity = Activity.find_by_id(params[:activity_id])
            @trainings = @activity.trainings
        elsif params[:test_id] && @test = Test.find_by_id(params[:test_id])
            @trainings = @test.trainings
        else
            @trainings = Training.all
        end
    end

    def new
        if params[:actvity_id] && @activity = Activity.find_by_id(params[:activity_id])
            @training = @activity.trainings.build
        else
        @training = Training.new
        @training.build_activity
        # belongs_to - nested form
        end 
    end

    def create
        if params[:activity_id] && @activity = Activity.find_by_id(params[:activity_id])
            @training = @activity.trainings.build(training_params)
        elsif params[:test_id] && @testing = Test.find_by_id(params[:test_id])
            @training = @test.trainings.build(training_params)
        else 
            @training = Training.new(training_params)
        end
        # otherwise, create a training instance as usual
        if @training.save
            redirect_to training_path(@training)
        else
            render :new
        end
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
        params.require(:training).permit(:date, :notes, :user_id, :test_id, :activity_id)
    end

end
