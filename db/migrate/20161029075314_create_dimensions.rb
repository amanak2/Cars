class CreateDimensions < ActiveRecord::Migration[5.0]
  def change
    create_table :dimensions do |t|
      t.float :length
      t.float :width
      t.float :height
      t.float :wheel_base
      t.float :weight
      t.belongs_to :car, foreign_key: true

      t.timestamps
    end
  end
end
