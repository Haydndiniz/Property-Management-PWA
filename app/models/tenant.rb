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
class Tenant < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum identity_type: { passport: 0, "citizen card": 1 }

  belongs_to :unit
end
