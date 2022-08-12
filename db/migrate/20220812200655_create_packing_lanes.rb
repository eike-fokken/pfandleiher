class CreatePackingLanes < ActiveRecord::Migration[7.0]
  def change
    create_table :packing_lanes do |t|
      t.integer :number

      t.timestamps
    end
  end
end
