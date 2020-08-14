class TrainingsController < ApplicationController

      def index
        #if it's nested
        if params[:activity_id] && @activity = Activity.find_by_id(params[:activity_id])
          @trainings = @activity.trainings
        else
          #keep with the same old stuff
          @trainings = Training.all
        end
      end
    
      def new
        if params[:activity_id] && @activity = Activity.find_by_id(params[:activity_id])
            @training = @activity.trainings.build
            # has_many
        else
            @training = Training.new
            @training.build_activity
            # belongs_to - nested form
        end
      end
    
      def create
        if params[:activity_id] && @activity = Activity.find_by_id(params[:activity_id])
            @training = @activity.trainings.build(training_params)
        else
            @training = Training.new(training_params)
        end
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
        params.require(:training).permit(:name, :notes, :test_id, :activity_id, activity_attributes:[:name, :time_required, :user_id])
      end
  end
  