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
      set_rank level: 5, to: Skill do |skill|
        skill.points >= 500.0 && skill.points < 1000.0
      end

      set_rank level: 4, to: Skill do |skill|
        skill.points >= 200.0 && skill.points < 500.0
      end

      set_rank level: 3, to: Skill do |skill|
        skill.points >= 50.0 && skill.points < 200.0
      end

      set_rank level: 2, to: Skill do |skill|
        skill.points >= 10.0 && skill.points < 50.0
      end

      set_rank level: 1, to: Skill do |skill|
        skill.points >= 0 && skill.points < 10.0
      end

      # 1.5x times to reach next lvl up to level 99?
      # 600 lvl 1, 800 lvl 2?
    end
  end
end
