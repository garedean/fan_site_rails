class RemoveRatingFromLocations < ActiveRecord::Migration
  def change
    remove_column :locations, :rating, :integer
  end
end
