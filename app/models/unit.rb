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
class Unit < ApplicationRecord
  belongs_to :property
  has_one :tenant

  enum unit_type: {
    studio: 0,
    apartment: 1,
    townhouse: 2,
    room: 3

  }
end
