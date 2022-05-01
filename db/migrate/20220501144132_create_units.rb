class CreateUnits < ActiveRecord::Migration[6.0]
  def change
    create_table :units do |t|
      t.belongs_to :property, foreign_key: true
      t.string :unit_name
      t.integer :unit_type
      t.string :description
      t.integer :rent_price

      t.timestamps

    end
  end
end