class StudySession < ApplicationRecord
  belongs_to :skill
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  def liked?(user)
    !!self.likes.find{|like| like.user_id == user.id}
  end

  validates :description, presence: true
  validates :goal, presence: true



  has_one_attached :photo
end
