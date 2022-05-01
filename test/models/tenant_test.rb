# == Schema Information
#
# Table name: tenants
#
#  id                  :integer          not null, primary key
#  active              :boolean
#  guarantor_confirmed :boolean
#  guarantor_email     :string
#  guarantor_name      :string
#  identity_num        :string
#  identity_type       :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
require 'test_helper'

class TenantTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
