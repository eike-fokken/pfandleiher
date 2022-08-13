class CreateTimeStamps < ActiveRecord::Migration[7.0]
  def change
    create_table :time_stamps do |t|
      t.references :issuable_articles, null: false, foreign_key: true
      t.references :cooking_groups, null: false, foreign_key: true
      t.integer :number

      t.timestamps
    end
  end
end
