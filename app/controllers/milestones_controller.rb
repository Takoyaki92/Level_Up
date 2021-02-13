class MilestonesController < ApplicationController
  def new
    @milestone = Milestone.new
    @user = current_user
  end

  def create
    @milestone = Milestone.new(milestone_params)
    # @milestone.skill = Skill.find(milestone_params)
    @milestone.skill = current_user.skill
    if @milestone.save
      redirect_to @user
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  private

  def milestone_params
    params.require(:milestone).permit(:skill_id, :goal, :complete_date)
  end
end
