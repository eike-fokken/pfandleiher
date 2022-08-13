class MakeNumberNonNull < ActiveRecord::Migration[7.0]
  def change
    change_column_null :time_stamps, :number, false
  end
end
