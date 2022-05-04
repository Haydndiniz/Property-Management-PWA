# == Schema Information
#
# Table name: tenants
#
#  id                     :integer          not null, primary key
#  active                 :boolean
#  avatar_url             :string
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  first_name             :string           default(""), not null
#  guarantor_confirmed    :boolean
#  guarantor_email        :string
#  guarantor_name         :string
#  identity_num           :string
#  identity_type          :integer
#  invitation_accepted_at :datetime
#  invitation_created_at  :datetime
#  invitation_limit       :integer
#  invitation_sent_at     :datetime
#  invitation_token       :string
#  invitations_count      :integer          default(0)
#  invited_by_type        :string
#  last_name              :string           default(""), not null
#  phone                  :string
#  provider               :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  uid                    :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  invited_by_id          :integer
#  property_id            :integer
#  unit_id                :integer
#
# Indexes
#
#  index_tenants_on_email                              (email) UNIQUE
#  index_tenants_on_invitation_token                   (invitation_token) UNIQUE
#  index_tenants_on_invited_by_id                      (invited_by_id)
#  index_tenants_on_invited_by_type_and_invited_by_id  (invited_by_type,invited_by_id)
#  index_tenants_on_property_id                        (property_id)
#  index_tenants_on_reset_password_token               (reset_password_token) UNIQUE
#  index_tenants_on_unit_id                            (unit_id)
#
require 'test_helper'

class TenantTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
