class FixListingColumnNames < ActiveRecord::Migration[6.1]
  def change
    rename_column :listings, :bed, :beds 
    rename_column :listings, :bath, :baths
  end
end
