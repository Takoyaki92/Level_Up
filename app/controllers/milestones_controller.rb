class MilestonesController < ApplicationController
  after_action :calculate_rank, only: :complete

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
  #   if @milestone.update(milestone_params)
  #     redirect_to skill_path(@milestone.skill)
  #     @milestone.complete_date = Date.today
  #   else
  #     render :new
  #   end
  # end

  def complete
    @milestone = Milestone.find(params[:id])
    @milestone.complete_date = Date.today
    @milestone.save
    redirect_to skill_path(@milestone.skill)
  end

  private

  def calculate_rank
    Merit::RankRules.new.check_rank_rules
  end

  def milestone_params
    params.require(:milestone).permit(:goal, :complete_date)
  end
end
