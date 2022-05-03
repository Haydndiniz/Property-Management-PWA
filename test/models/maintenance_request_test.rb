# == Schema Information
#
# Table name: maintenance_requests
#
#  id          :integer          not null, primary key
#  description :text
#  status      :boolean
#  subject     :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  property_id :integer
#  tenant_id   :integer
#
# Indexes
#
#  index_maintenance_requests_on_property_id  (property_id)
#  index_maintenance_requests_on_tenant_id    (tenant_id)
#
# Foreign Keys
#
#  property_id  (property_id => properties.id)
#  tenant_id    (tenant_id => tenants.id)
#
require 'test_helper'

class MaintenanceRequestTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
