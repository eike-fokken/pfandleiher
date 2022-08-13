class MakeEverythingNonNull < ActiveRecord::Migration[7.0]
  def change
    change_column_null :cooking_groups, :name, false
    change_column_null :issuable_articles, :name, false
    change_column_null :packing_lanes, :number, false
  end
end
