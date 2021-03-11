class Skill < ApplicationRecord
  has_merit

  belongs_to :user
  has_many :study_sessions
  has_many :milestones

  validates :name, presence: true

  def calculate_percentage
    if self.level == 1
      (self.points / 600) * 100
    elsif self.level == 2
      (self.points / 1320) * 100
    elsif self.level == 3
      (self.points / 2180) * 100
    elsif self.level == 4
      (self.points / 3180) * 100
    elsif self.level == 5
      (self.points / 4180) * 100
    end
  end

end
