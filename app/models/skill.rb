class Skill < ApplicationRecord
  has_merit

  belongs_to :user
  has_many :study_sessions
  has_many :milestones

  validates :name, presence: true
  validates :name, uniqueness: true
  # Will this interfere with other users?

  after_update :calculate_rank

  def calculate_rank
    Merit::RankRules.new.check_rank_rules
  end
end
