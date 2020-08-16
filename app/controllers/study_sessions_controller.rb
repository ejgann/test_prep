class StudySessionsController < ApplicationController

    def index
        if current_user
        @study_sessions = current_user.find_by(id: params[:id]).study_sessions
        else
            @study_sessions = Study_Session.all
        end
    end

    # def new
    #     @study_session = current_user.study_session.new
    # end

    # def create
    #     @study_session = current_user.study_session.build(study_session_params)
    #     if @study_session.save
    #         redirect_to user_study_sessions_path
    #     else
    #         render :new
    #     end
    # end

    private

    def study_session_params
        params.require(:study_session).permit(:date, :rating, :comments, :user_id, :activity_id)
    end
end
