class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.column :name, :string

      t.timestamps
    end
  end
end
