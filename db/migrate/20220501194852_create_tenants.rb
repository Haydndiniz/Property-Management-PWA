class CreateTenants < ActiveRecord::Migration[6.0]
  def change
    create_table :tenants do |t|
      t.belongs_to :unit
      t.belongs_to :property
      t.string :first_name, null: false, default: ""
      t.string :last_name, null: false, default: ""
      t.string :phone
      t.string :avatar_url
      t.boolean :active
      t.string  :identity_num
      t.integer :identity_type
      t.string  :guarantor_name
      t.string  :guarantor_email
      t.boolean :guarantor_confirmed

      t.timestamps
    end
  end
end
