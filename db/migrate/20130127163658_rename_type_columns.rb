class RenameTypeColumns < ActiveRecord::Migration
  def up
  	rename_column :matrices, :type, :profile_type
  	rename_column :profiles, :type, :profile_type
  end

  def down
  	rename_column :matrices, :type, :profile_type
  	rename_column :profiles, :type, :profile_type
  end
end
