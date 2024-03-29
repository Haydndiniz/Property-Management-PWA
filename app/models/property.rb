# == Schema Information
#
# Table name: properties
#
#  id              :integer          not null, primary key
#  address         :json
#  available_units :integer
#  description     :text
#  email           :string
#  main_contact    :string
#  name            :string
#  no_of_units     :integer
#  phone           :string
#  property_type   :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class Property < ApplicationRecord
  has_one_attached :image
  has_many :units, dependent: :destroy
  # has_many :tenants, dependent: :destroy
  has_many :maintenance_requests, dependent: :destroy
  # has_many :resources

  enum property_type: {
    apartment: 0,
    townhouse: 1,
    houseboat: 2,
    warehouse: 3,
    dormitory: 4
  }
end
