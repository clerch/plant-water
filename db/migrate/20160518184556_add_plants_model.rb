class AddPlantsModel < ActiveRecord::Migration
  
  def change
    # Add code to create the table here
    # HINT: check out ActiveRecord::Migration.create_table
    create_table :plants do |t|
      # column definitions go here
      t.column :user_id, :integer
      t.column :plant_type_id, :integer
      t.column :custom_name, :string
      t.column :last_date_watered, :date
      t.column :custom_watering_frequency, :integer
      t.timestamps
    end
  end
end