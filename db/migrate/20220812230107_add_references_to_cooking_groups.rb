class AddReferencesToCookingGroups < ActiveRecord::Migration[7.0]
  def change
    add_reference :cooking_groups, :packing_lane, null: false, foreign_key: true
  end
end
