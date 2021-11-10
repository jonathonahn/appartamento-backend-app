class ChangeBathroomToDecimal < ActiveRecord::Migration[6.1]
  def change
    change_column :listings, :baths, :decimal, :precision => 4, :scale => 2
  end
end
