class CreateTransmissions < ActiveRecord::Migration[5.0]
  def change
    create_table :transmissions do |t|
      t.string :type
      t.integer :speeds
      t.string :drive_type
      t.string :clutch_type
      t.belongs_to :car, foreign_key: true

      t.timestamps
    end
  end
end
