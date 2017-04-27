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

require 'test_helper'

class RaceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
