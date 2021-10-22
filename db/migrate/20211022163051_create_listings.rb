class CreateListings < ActiveRecord::Migration[6.1]
  def change
    create_table :listings do |t|
      t.string :address
      t.integer :group_id
      t.string :status
      t.string :url

      t.timestamps
    end
  end
end
