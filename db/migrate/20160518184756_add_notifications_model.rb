class AddNotificationsModel < ActiveRecord::Migration
  
  def change
    # Add code to create the table here
    # HINT: check out ActiveRecord::Migration.create_table
    create_table :notifications do |t|
    # column definitions go here
    t.column :user_id, :integer
    t.column :message, :string
    t.timestamps
    end
  end
end