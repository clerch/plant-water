class AddPlantTypesModel < ActiveRecord::Migration
  
  def change
        # Add code to create the table here
        # HINT: check out ActiveRecord::Migration.create_table
    create_table :plant_types do |t|
        # column definitions go here
        t.column :image_url, :string
        t.column :common_name, :string
        t.column :scientific_name, :string
        t.column :description, :string
        t.column :light_requirements, :string
        t.column :watering_requirements, :string
        t.column :low_water_frequency, :integer
        t.column :high_water_frequency, :integer
        t.column :soil_change_frequency, :integer
        t.column :fertilizer_frequency, :integer
        t.timestamps
    end
  end
end