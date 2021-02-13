class Milestone < ApplicationRecord
  belongs_to :skill

  validates :goal
end
