class Skill < ApplicationRecord
  belongs_to :user
  has_many :study_sessions
  has_many :milestones

  validates :name, presence: true, uniqueness: true　
  # Will this interfere with other users?
end
