class AddGroupIdAndImageToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :group_id, :integer
    add_column :users, :image, :string
  end
end
