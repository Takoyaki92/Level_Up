class Comment < ApplicationRecord
  belongs_to :study_session
  belongs_to :user
  validates :description, presence: true
end
