class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.text :text, null: false
      t.string :description, null: false
      t.string :keyword, null: false
      t.timestamps
    end
  end
end
