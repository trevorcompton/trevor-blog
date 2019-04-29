class ChangeDateToPosts < ActiveRecord::Migration[5.2]
  def change
    change_column :posts, :date_published, :string
  end
end
