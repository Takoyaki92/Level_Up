class StudySessionsController < ApplicationController

  def index
    @study_sessions = StudySession.all
    @comments = Comment.all
  end

  def new
    # @user = current_user
    @study_session = StudySession.new
    if params[:skill_id].present?
      @skill = Skill.find(params[:skill_id])
      @study_session.skill = @skill
    end
  end

  def create
    # @skill = Skill.find(study_session_params[:skill_id])
    @study_session = StudySession.new(study_session_params)
    # @study_session.skill = @skill
    # @study_session.skill.user = current_user
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
    params.require(:study_session).permit(:goal, :skill_id, :description, :public, :photo)
  end
end
