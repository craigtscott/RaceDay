class RaceMember < ActiveRecord::Base
  validates :team_id, :user_id, :race_id, :bib_number, :type, presence: true
  
end
