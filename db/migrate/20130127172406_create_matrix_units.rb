class CreateMatrixUnits < ActiveRecord::Migration
  def change
    create_table :matrix_units do |t|
      t.date :year
      t.integer :period
      t.string :profile_type
      t.string :status
      t.integer :cost_center_id
      t.integer :account_id
      t.decimal :amount

      t.timestamps
    end
  end
end
