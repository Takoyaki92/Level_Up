class StudySession < ApplicationRecord
  belongs_to :skill
  has_many :comments, dependent: :destroy

  validates :description, presence: true
end
