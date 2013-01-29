class CreateProfileUnits < ActiveRecord::Migration
  def change
    create_table :profile_units do |t|
      t.integer :matrix_id
      t.date :year
      t.integer :period
      t.string :profile_type
      t.string :status
      t.integer :cost_center_id
      t.integer :account_id
      t.decimal :amount
      t.string :fund
      t.boolean :linked

      t.timestamps
    end
  end
end
