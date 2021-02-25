class StudySession < ApplicationRecord
  belongs_to :skill
  has_many :comments, dependent: :destroy

  validates :description, presence: true
  has_one_attached :photo
end
