class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def show
  end

  def new
    @study_session = StudySession.find(params[:study_session_id])
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @comment.study_session = StudySession.find(params[:study_session_id])
    if @comment.save
      redirect_to study_sessions_path(anchor: "comment-#{@comment.id}")
    else 
      render :new
    end
  end

  def edit
  end

  def update
  end

  private

  def comment_params
    params.require(:comment).permit(:description)
  end

end
