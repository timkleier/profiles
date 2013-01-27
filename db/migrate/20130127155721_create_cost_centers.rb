class CreateCostCenters < ActiveRecord::Migration
  def change
    create_table :cost_centers do |t|
      t.string :cost_center
      t.string :description

      t.timestamps
    end
  end
end
