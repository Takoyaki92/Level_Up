class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  # This displays all of the user's skills in their PROFILE page.
  def skills
    @user = User.find(params[:id])
    @skills = @user.skills
  end
end
