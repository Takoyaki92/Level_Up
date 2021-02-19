class StudySessionsController < ApplicationController

  def index
    @study_sessions = StudySession.all
  end

  def new
    # @skill = Skill.find(params[:skill_id])
    @user = current_user
    @study_session = StudySession.new
  end

  def create
    @skill = Skill.find(params[:skill_id])
    @study_session = StudySession.new(study_session_params)
    @study_session.skill = @skill
    @study_session.skill.user = current_user
    # @study_session.user = current_user
    if @study_session.save
      redirect_to study_sessions_path
      # Might need to change this later
    else
      render :new
    end
    # @skill = resource
    # super
  end

  private

  def study_session_params
    params.require(:study_session).permit(:goal, :description, :public, :photo)
  end
end
