class AddRentToListings < ActiveRecord::Migration[6.1]
  def change
    add_column :listings, :rent, :integer
  end
end
