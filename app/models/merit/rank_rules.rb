# Be sure to restart your server when you modify this file.
#
# 5 stars is a common ranking use case. They are not given at specified
# actions like badges, you should define a cron job to test if ranks are to be
# granted.
#
# +set_rank+ accepts:
# * :+level+ ranking level (greater is better)
# * :+to+ model or scope to check if new rankings apply
# * :+level_name+ attribute name (default is empty and results in 'level'
#   attribute, if set it's appended like 'level_#{level_name}')

module Merit
  class RankRules
    include Merit::RankRulesMethods

    def initialize
      # set_rank :level => 1, :to => Commiter.active do |commiter|
      #   commiter.repositories.count > 1 && commiter.followers >= 10
      # end
      #
      # set_rank :level => 2, :to => Commiter.active do |commiter|
      #   commiter.branches.count > 1 && commiter.followers >= 10
      # end
      #
      # set_rank :level => 3, :to => Commiter.active do |commiter|
      #   commiter.branches.count > 2 && commiter.followers >= 20
      # end

      # points needed to level up: 600 > 720 > 860 > 1000 > 1200, roughly 1.2x

      set_rank level: 5, to: Skill do |skill|
        skill.points >= 3180.0 && skill.points < 4380.0
      end

      set_rank level: 4, to: Skill do |skill|
        skill.points >= 2180.0 && skill.points < 3180.0
      end

      set_rank level: 3, to: Skill do |skill|
        skill.points >= 1320.0 && skill.points < 2180.0
      end

      set_rank level: 2, to: Skill do |skill|
        skill.points >= 600.0 && skill.points < 1320.0
      end

      set_rank level: 1, to: Skill do |skill|
        skill.points >= 0 && skill.points < 600.0
      end
    end
  end
end
