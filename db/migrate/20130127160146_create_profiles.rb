class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :matrix_id
      t.date :year
      t.integer :period
      t.string :type
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
