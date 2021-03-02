class SkillsController < ApplicationController
  def index
  end

  def show
    Merit::RankRules.new.check_rank_rules
    @skill = Skill.find(params[:id])
    # copying the badges from user/show for skill/show
    @user = User.find(params[:id])
    @skills = @user.skills
    Merit::RankRules.new.check_rank_rules

    @badges = @skills.map do |skill|
      skill.sash.badges_sashes.map do |bs|
        {
          skill: skill.name,
          assigned: bs.created_at.strftime("%b %d, %Y"),
          description: bs.badge.description
        }
      end
    end.flatten
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
