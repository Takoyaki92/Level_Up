class SkillsController < ApplicationController
  def index
  end

  def show
    @skill = Skill.find(params[:id])
    Merit::RankRules.new.check_rank_rules
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

  # we need a skill#update method for the merit to work properly!

  private

  def skill_params
    params.require(:skill).permit(:name, :user_id)
  end
end
