class CreateTenants < ActiveRecord::Migration[6.0]
  def change
    create_table :tenants do |t|
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
