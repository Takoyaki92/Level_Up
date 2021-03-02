class Skill < ApplicationRecord
  has_merit

  belongs_to :user
  has_many :study_sessions
  has_many :milestones

  validates :name, presence: true
end
