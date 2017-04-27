# == Schema Information
#
# Table name: checkpoints
#
#  id            :integer          not null, primary key
#  name          :string           not null
#  race_id       :integer          not null
#  coordinates   :string
#  place_in_race :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class CheckpointTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
