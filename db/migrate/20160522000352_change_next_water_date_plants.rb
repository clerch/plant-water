class ChangeNextWaterDatePlants < ActiveRecord::Migration
  def change
    remove_column :plants, :next_water_date
    add_column :plants, :next_water_date, :date
  end
end
