class StudySessionsController < ApplicationController

  def index
    @study_sessions = StudySession.all
  end

  def new
    @study_session = StudySession.new
  end

  def create
    @study_session = StudySession.new(study_session_params)
    @study_session.user = current_user
    if @study_session.save
      redirect_to "/users/:id"
      # Might need to change this later
    else
      render :new
    end
  end

  private

  def study_session_params
    params.require(:study_session).permit(:goal, :description, :public, :photo)
  end
end
