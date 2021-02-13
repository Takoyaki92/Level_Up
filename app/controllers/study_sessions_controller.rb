class StudySessionsController < ApplicationController
  def new
    @study_session = StudySession.new
  end
end
