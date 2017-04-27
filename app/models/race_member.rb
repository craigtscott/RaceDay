# == Schema Information
#
# Table name: race_members
#
#  id         :integer          not null, primary key
#  team_id    :integer          not null
#  user_id    :integer          not null
#  race_id    :integer          not null
#  bib_number :integer          not null
#  type       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class RaceMember < ActiveRecord::Base
  validates :team_id, :user_id, :race_id, :bib_number, :type, presence: true

  belongs_to :team
  belongs_to :user
  belongs_to :race
end
