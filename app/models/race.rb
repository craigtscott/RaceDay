# == Schema Information
#
# Table name: races
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  date       :string           not null
#  track      :string           not null
#  team_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Race < ApplicationRecord
    validates :name, :date, :track, :team_id, presence: true

    belongs_to :team
    has_many :race_members
end
