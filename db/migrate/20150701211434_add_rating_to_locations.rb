class AddRatingToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :rating, :integer
  end
end
