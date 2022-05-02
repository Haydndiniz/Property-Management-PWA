# == Schema Information
#
# Table name: tenants
#
#  id                     :integer          not null, primary key
#  active                 :boolean
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  guarantor_confirmed    :boolean
#  guarantor_email        :string
#  guarantor_name         :string
#  identity_num           :string
#  identity_type          :integer
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  user_id                :integer
#
# Indexes
#
#  index_tenants_on_email                 (email) UNIQUE
#  index_tenants_on_reset_password_token  (reset_password_token) UNIQUE
#  index_tenants_on_user_id               (user_id)
#
require 'test_helper'

class TenantTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
