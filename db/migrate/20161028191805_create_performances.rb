class CreatePerformances < ActiveRecord::Migration[5.0]
  def change
    create_table :performances do |t|
      t.integer :top_speed
      t.float :acceleration1
      t.float :acceleration2
      t.float :power_to_weight
      t.float :torque_to_weight
      t.belongs_to :car, foreign_key: true

      t.timestamps
    end
  end
end
