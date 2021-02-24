class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @skills = @user.skills
    Merit::RankRules.new.check_rank_rules
  end
end
