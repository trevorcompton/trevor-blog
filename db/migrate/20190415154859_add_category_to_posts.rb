class AddCategoryToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :category, :string
    change_column :posts, :category, :text
  end
end
