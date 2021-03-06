class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @skills = @user.skills
    Merit::RankRules.new.check_rank_rules

    @badges = @skills.map do |skill|
      skill.sash.badges_sashes.map do |bs|
        {
          skill: skill.name,
          assigned: bs.created_at.strftime("%b %d, %Y"),
          description: bs.badge.description,
          image: bs.badge.custom_fields[:image]
        }
      end
    end.flatten
  end

  def calculate_level(skill)
    # @user = User.find(params[:id])
    # @skills = @user.skills
    skill.name
  end
end
