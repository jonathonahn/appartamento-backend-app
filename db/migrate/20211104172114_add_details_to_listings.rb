class AddDetailsToListings < ActiveRecord::Migration[6.1]
  def change
    add_column :listings, :bed, :integer
    add_column :listings, :bath, :integer
    add_column :listings, :squarefeet, :integer
  end
end
