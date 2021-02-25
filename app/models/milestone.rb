class Milestone < ApplicationRecord
  has_merit

  belongs_to :skill

  validates :goal, presence: true
end
