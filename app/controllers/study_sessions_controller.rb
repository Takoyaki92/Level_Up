class StudySessionsController < ApplicationController

  def index
    @study_sessions = StudySession.all
    @comments = Comment.all
    @comment = Comment.new
  end

  def new
    # @user = current_user
    @study_session = StudySession.new
    if params[:skill_id].present?
      @skill = Skill.find(params[:skill_id])
      @study_session.skill = @skill
      @comment = Comment.new
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

  def like
    @study_session = StudySession.find(params[:id])
    Like.create(user_id: current_user.id, study_session_id: @study_session.id)
    redirect_to study_sessions_path(anchor: "like-#{@study_session.id}")

  end

  def unlike
    @study_session = StudySession.find(params[:id])
    like = @study_session.likes.find{|like| like.user_id == current_user.id}
    like.delete
    redirect_to study_sessions_path
  end


  private

  def study_session_params
    params.require(:study_session).permit(:goal, :skill_id, :description, :public, :photo, :end_time)
  end

end


