class LikesController < ApplicationController
  def create
    @study_session = StudySession.find(params[:study_session_id])
    Like.create(user: current_user, study_session: @study_session)
    respond_to do |format|
      format.html { redirect_to study_sessions_path(anchor: "like-#{@study_session.id}") }
      format.js
    end
  end

  def destroy
    @like = Like.find(params[:id])
    @study_session = @like.study_session
    @like.delete
    respond_to do |format|
      # format.html { redirect_to study_sessions_path(anchor: "like-#{@like.study_session.id}") }
      format.js
    end
  end
end
