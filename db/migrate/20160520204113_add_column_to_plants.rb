class AddColumnToPlants < ActiveRecord::Migration
  def change
    add_column :plants, :next_water_date, :datetime
  end
end
