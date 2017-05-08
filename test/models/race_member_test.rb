# == Schema Information
#
# Table name: race_members
#
#  id             :integer          not null, primary key
#  team_id        :integer          not null
#  user_id        :integer          not null
#  race_id        :integer          not null
#  bib_number     :integer          not null
#  classification :string           not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class RaceMemberTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
