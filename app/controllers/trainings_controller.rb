class TrainingsController < ApplicationController
    def index
        @trainings = Training.all
    end

    def new
        @training = Training.new
    end

    def create
        @training = current_user.trainings.build(training_params)
        if @training.save
            redirect_to trainings_path
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
        params.require(:training).permit(:date, :notes)
    end

end
