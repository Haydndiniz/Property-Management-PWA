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
class Tenant < ApplicationRecord
  belongs_to :user, -> { where role: 3 }
  enum identity_type: { passport: 0, "citizen card": 1 }
end
