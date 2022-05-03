class CreateMaintenanceRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :maintenance_requests do |t|
      t.string :subject
      t.text :description
      t.boolean :status
      t.belongs_to :tenant, foreign_key: true
      t.belongs_to :property, foreign_key: true

      t.timestamps
    end
  end
end
