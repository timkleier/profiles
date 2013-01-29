class FixMatrixUnitColumnName < ActiveRecord::Migration
  def up
  	rename_column :profile_units, :matrix_id, :matrix_unit_id
  end

  def down
  	rename_column :profile_units, :matrix_id, :matrix_unit_id
  end
end
