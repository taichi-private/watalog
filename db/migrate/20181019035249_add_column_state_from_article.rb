class AddColumnStateFromArticle < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :state, :integer, null: false
  end
end
