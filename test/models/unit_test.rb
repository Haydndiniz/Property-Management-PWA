# == Schema Information
#
# Table name: units
#
#  id          :integer          not null, primary key
#  description :string
#  rent_price  :integer
#  unit_name   :string
#  unit_type   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  property_id :integer
#
# Indexes
#
#  index_units_on_property_id  (property_id)
#
# Foreign Keys
#
#  property_id  (property_id => properties.id)
#
require 'test_helper'

class UnitTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
