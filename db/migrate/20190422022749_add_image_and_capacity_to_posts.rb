class AddImageAndCapacityToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :image_file_name, :string, default: ""
  end
end
