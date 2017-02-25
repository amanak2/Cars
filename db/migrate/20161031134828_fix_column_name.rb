class FixColumnName < ActiveRecord::Migration[5.0]
  def self.up
   rename_column :engines, :type, :engine_type
   rename_column :transmissions, :type, :trans_type
 end
end
