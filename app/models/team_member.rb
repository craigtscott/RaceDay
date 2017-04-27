class TeamMember < ActiveRecord::Base
  validates :team_id, :user_id, presence: true

end
