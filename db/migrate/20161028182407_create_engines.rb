class CreateEngines < ActiveRecord::Migration[5.0]
  def change
    create_table :engines do |t|
      t.string :type
      t.float :displacment
      t.integer :power
      t.float :torque
      t.string :layout
      t.belongs_to :car, foreign_key: true

      t.timestamps
    end
  end
end
