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
require 'test_helper'

class PropertyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
