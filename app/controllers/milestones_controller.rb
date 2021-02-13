class MilestonesController < ApplicationController
  def show
    @skill = Skill.find(params[:id])
    @milestone.skill = current_user.skill(params[:id])
  end

  def new
    @skill = Skill.find(params[:skill_id])
    @milestone = Milestone.new
  end

  def create
    @milestone = Milestone.new(milestone_params)
    @milestone.skill = Skill.find(params[:skill_id])
    if @milestone.save
      redirect_to skill_path(@milestone.skill)
    else
      render :new
    end
  end

  # def edit
  #   @milestone = Milestone.find(current_user.skills.milestone.id)
  # end

  # def update
  #   @milestone = Milestone.find(params[:id])
  #   @milestone.skill = current_user.skill
  #   if @milestone.update(milestone_params)
  #     redirect_to skill_path(@milestone.skill)
  #   else
  #     render :new
  #   end
  # end

  private

  def milestone_params
    params.require(:milestone).permit(:goal)
  end
end
