class ChangeShiftTypeColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :shifts, :type, :shift_type
  end
end
