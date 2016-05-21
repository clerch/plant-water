class AddToNotifications < ActiveRecord::Migration
  def change
    remove_column :notifications, :message
    add_column :notifications, :message_id, :integer
    add_index :notifications, :message_id
    add_column :notifications, :plant_id, :integer
    add_index :notifications, :user_id
  end
end
