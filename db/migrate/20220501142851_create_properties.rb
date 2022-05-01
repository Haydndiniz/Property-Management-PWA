class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.string :name
      t.text :description
      t.integer :property_type
      t.json :address
      t.string :phone
      t.string :email
      t.string :main_contact
      t.integer :no_of_units
      t.integer :available_units

      t.timestamps
    end
  end
end
