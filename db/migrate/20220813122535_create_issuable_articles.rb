class CreateIssuableArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :issuable_articles do |t|
      t.string :name

      t.timestamps
    end
  end
end
