class StudySession < ApplicationRecord
  belongs_to :skill

  validates :description, presence: true
end
