class SkillsController < ApplicationController
  def index
  end

  def new
    @user = User.find(params[:user_id])
    @skill = Skill.new
  end

  def create
    @user = User.find(params[:user_id])
    @skill = Skill.new(skill_params)
    @skill.user = @user
    if @skill.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  private

  def skill_params
    params.require(:skill).permit(:name, :user_id)
  end
end
